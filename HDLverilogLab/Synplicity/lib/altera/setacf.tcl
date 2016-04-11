###############################################################################
# set up global variable _lib_
###############################################################################
set _lib_ "SETACF"
set acfmode UNDO
set _design_ {}
if {[catch {unset _lineno_}] == 1} {}

###############################################################################
# create and return a new variable name of the form "_V[0-9]+"
###############################################################################
proc alloc {} {
    global _counter_
    if {[catch {set _counter_}]} {
        set _counter_ 0
    }
    incr _counter_
    return "_P$_counter_"
}

###############################################################################
# open a file and return its file pointer.
###############################################################################
proc file_alloc {name access} {
    global _lineno_
    set file [open $name $access]
    set _lineno_($file) 0
    return $file
}

###############################################################################
# close a previously open file.
###############################################################################
proc file_free {file} {
    global _lineno_
    close $file
    unset _lineno_($file)
}

###############################################################################
# return the next line in "file" if not at eof. If at eof, 
###############################################################################
proc file_get_line {file} {
    global _lineno_
    if {[eof $file] == 1} {
        error "unexpected EOF" {} "PREMATURE EOF"
    }

    incr _lineno_($file)
    gets $file line
    return $line
}

###############################################################################
# return the current line number of a file being read.
###############################################################################
proc file_get_lineno {file} {
    global _lineno_
    return [set _lineno_($file)]
}

###############################################################################
# create and return an ACF object from an ACF file named "filename". ACF 
# object is a list of sections
###############################################################################
proc acf_alloc {filename} {
    if {[catch {set file [file_alloc $filename r]}]} {
        global [set acf [alloc]]
        set $acf {}
        return $acf
    }

    global [set acf [alloc]]
    set $acf {}
    while {[eof $file] == 0} {
        set section [sec_alloc $file]
        if {$section == {}} {
            break;
        }
        lappend $acf $section
    }

    file_free $file
    return $acf
}

###############################################################################
# free a previously allocated/created ACF object.
###############################################################################
proc acf_free {acf} {
    global $acf
    foreach section [set $acf] {
        sec_free $section
    }
    unset $acf
}

###############################################################################
# return the type indentifier of a section.
###############################################################################
proc sec_get_type {section} {
    return [format "%s(type)" $section]
}

###############################################################################
# return the comment part of a section which is a list of strings.
###############################################################################
proc sec_get_comment {section} {
    return [format "%s(comment)" $section]
}

###############################################################################
# return the name of a section.
###############################################################################
proc sec_get_name {section} {
    return [format "%s(name)" $section]
}

###############################################################################
# return the body of a section.
###############################################################################
proc sec_get_body {section} {
    return [format "%s(body)" $section]
}

###############################################################################
# create and return a section. A section has (1) comment, (2) name,
# (3) a body. See also body_alloc{}.
###############################################################################
proc sec_alloc {file} {
    global [set section [alloc]]
    set [sec_get_type $section] SECTION
    set [sec_get_name $section] {}
    set [sec_get_comment $section] {}
    set [sec_get_body $section] {}

    if {[catch {set line [file_get_line $file]}] == 1} {
        unset $section
        return {}
    }
        
    while {[string first "--" $line] == 0 || $line == {}} {
        lappend [sec_get_comment $section] $line
        if {[catch {set line [file_get_line $file]}] == 1} {
            unset $section
            return {}
        }
    }

    set [sec_get_name $section] $line
    set [sec_get_body $section] [body_alloc $file]
    return $section
}

###############################################################################
# free a previously allocated/created "section".
###############################################################################
proc sec_free {section} {
    global $section
    body_free [set [sec_get_body $section]]
    unset $section
}

###############################################################################
# create and return a section body object.
###############################################################################
proc body_alloc {file} {
    global _lineno_
    set line [file_get_line $file]
    if {$line != "BEGIN"} {
        error "at line [file_get_lineno $file]: expected keyword BEGIN but got $line"
    }

    global [set body [alloc]]
    set line [file_get_line $file]
    while {$line != "END;"} {
        lappend $body [attr_alloc $line [file_get_lineno $file]]
        set line [file_get_line $file]
    }

    if {[catch {set $body}] == 1} {
        set $body {}
    }
    return $body
}

###############################################################################
# free a previously allocated/created section "body".
###############################################################################
proc body_free {body} {
    global $body
    foreach attr [set $body] {
        attr_free $attr
    }
    unset $body
}

###############################################################################
# return the type indentifier of an attribute (always == ATTRIBUTE)
###############################################################################
proc attr_get_type {attr} {
    return [format "%s(type)" $attr]
}

###############################################################################
# return the name of an attribute.
###############################################################################
proc attr_get_name {attr} {
    return [format "%s(name)" $attr]
}

###############################################################################
# return the value of an attribute.
###############################################################################
proc attr_get_value {attr} {
    return [format "%s(value)" $attr]
}

###############################################################################
# allocate and return an attribute from an ACF file. An attribute contains
# (1) object, (2) name, (3) value, and (4) unit.
###############################################################################
proc attr_alloc {line lineno} {
    if {$line != "" && [regexp {;$} $line] != 1} {
        error "at line $lineno: \"$line\" must end with \";\""
    }
    set line [string trimright $line ";"]

    global [set attr [alloc]]
    set [attr_get_type $attr] ATTRIBUTE
    set [attr_get_name $attr] {}
    set [attr_get_value $attr] {}

    set length [string length $line]
    set equal [string first " = " $line] 
    if {$equal == -1} {
        set equal $length
    }

    set name [string range $line 0 [expr $equal - 1]];
    set name [string trim $name " "]
    set [attr_get_name $attr] $name
    set value [string range $line [expr $equal + 2] [expr $length - 1]]
    set value [string trim $value " "]
    set [attr_get_value $attr] $value
    return $attr
}

###############################################################################
# free a previously allocated/created attribute.
###############################################################################
proc attr_free {attr} {
    global $attr
    unset $attr
}

###############################################################################
# write an ACF object into an ACF-formated file.
###############################################################################
proc acf_write {acf file} {
    global $acf
    foreach section [set $acf] {
        global $section
        sec_write $section $file
    }
}

###############################################################################
# write a section into an ACF-formated file.
###############################################################################
proc sec_write {section file} {
    global $section
    foreach comment [set [sec_get_comment $section]] {
        puts $file $comment
    }

    puts $file "[set [sec_get_name $section]]"
    puts $file "BEGIN"
    body_write [set [sec_get_body $section]] $file
    puts $file "END;"
}

###############################################################################
# write a section body into an ACF-formated file.
###############################################################################
proc body_write {body file} {
    global $body
    foreach attr [set $body] {
        global $attr
        attr_write $attr $file
    }
}

###############################################################################
# write an attribute into an ACF-formated file.
###############################################################################
proc attr_write {attr file} {
    global $attr
    puts -nonewline $file "[set [attr_get_name $attr]]"
    if {[set [attr_get_value $attr]] != {}} {
        puts -nonewline $file " = [set [attr_get_value $attr]]"
    }
    puts $file ";"
}

###############################################################################
# create and return a section with given "title" and "name". Section's body
# and comment are, however, empty.
###############################################################################
proc sec_create {name} {
    global [set section [alloc]]
    set [sec_get_type $section] SECTION
    set [sec_get_comment $section] {{}}
    set [sec_get_name $section] $name
    global [set body [alloc]]
    set $body {}
    set [sec_get_body $section] $body
    return $section
}

###############################################################################
# create and return a section with given "title" and "name". Section's body
# and comment are, however, empty.
###############################################################################
proc attr_create {name value} {
    global [set attr [alloc]]
    set [attr_get_type $attr] ATTRIBUTE
    set [attr_get_name $attr] $name
    set [attr_get_value $attr] $value
    return $attr
}

###############################################################################
# return a section from an ACF object with given "name". Matching is done 
# with regexp.
###############################################################################
proc acf_get_sec {acf name} {
    global $acf
    foreach section [set $acf] {
        global $section
        if {[regexp $name [set [sec_get_name $section]]]} {
            return $section
        }
    }
    return {}
}

###############################################################################
# return an attribute from a section with given "name". Matching is done with 
# regexp.
###############################################################################
proc sec_get_attr {section name} {
    global $section
    global [set body [set [sec_get_body $section]]]
    return [body_get_attr $body $name]
}

###############################################################################
# return an attribute from a section body with given "name". Matching is done 
# with regexp.
###############################################################################
proc body_get_attr {body name} {
    global $body
    foreach attr [set $body] {
        global $attr
        if {[regexp $name [set [attr_get_name $attr]]]} {
            return $attr
        }
    }
    return {}
}

###############################################################################
# remove and free the attribute with name "name" from a specified section 
# "section. Do nothing if attribute "name" is not found is "section".
###############################################################################
proc sec_rmv_attr {section name} {
    global $section
    global [set body [set [sec_get_body $section]]]
    body_rmv_attr $body $name
}

###############################################################################
# remove and free attribute with name "name" from a section body "body". Do
# nothing if attribute "name" is not found in "body".
###############################################################################
proc body_rmv_attr {body name} {
    global $body
    set index 0
    set found 0
    foreach attr [set $body] {
        global $attr
        if {[regexp $name [set [attr_get_name $attr]]]} {
            set found 1
            break
        }
        set index [expr $index + 1]
    }

    if {$found == 1} {
        set $body [lreplace [set $body] $index $index]
        attr_free $attr
    }
}

###############################################################################
# append an attribute to a "section"'s body. Return the attribute.
###############################################################################
proc sec_add_attr {section attr} {
    global $section
    global [set body [set [sec_get_body $section]]]
    lappend $body $attr
    return $attr
}

###############################################################################
# remove and free attribute "attrname" from section "secname". Do nothing if 
# "attrname" is not found in "secname".
###############################################################################
proc acf_rmv_attr {acf secname attrname} {
    global $acf
    set section [acf_get_sec $acf "^$secname$"]
    if {$section == {}} {
        return;
    }
    global $section

    set index [string first " :\t" $attrname]
    set object [string range $attrname 0 [expr $index - 1]]
    regsub -all "( |\t)" $object {} object
    regsub -all {(\|)} $object {\\|} object
	regsub -all {\[} $object {\\[} object
	regsub -all {\]} $object {\\]} object
    set name [string range $attrname [expr $index + 2] [expr [string length $attrname] - 1]]
    regsub -all "( |\t)" $name {} name

    if {$object == {}} {
        sec_rmv_attr $section "^( |	)+(.*)($name$)"
    } else {
        sec_rmv_attr $section "^( |	)+($object)( |	)+(:)( |	)+(.*)($name$)"
    }
}

###############################################################################
# set the "attrname" ACF attribute in section "secname" to a specified "value"
# important: global "acf" must have been set.
###############################################################################
proc acf_set_attr {acf secname attrname value} {
    global $acf
    set section [acf_get_sec $acf "^$secname$"]
    if {$section == {}} {
        set section [sec_create $secname]
        lappend $acf $section
    }
    global $section

    set index [string first " :\t" $attrname]
    set object [string range $attrname 0 [expr $index - 1]]
    regsub -all "( |\t)" $object {} object
    regsub -all {(\|)} $object {\\|} object
    set name [string range $attrname [expr $index + 2] [expr [string length $attrname] - 1]]
    regsub -all "( |\t)" $name {} name


    if {$object == {}} {
        set attr [sec_get_attr $section "^( |	)+(.*)($name$)"]
    } else {
        set attr [sec_get_attr $section "^( |	)+($object)( |	)+(:)( |	)+(.*)($name$)"]
    }

    if {$attr == {}} {
        set attr [attr_create $attrname $value]
        sec_add_attr $section $attr
    }
    global $attr

    set [attr_get_name $attr] $attrname
    set [attr_get_value $attr] $value
    return $value
}

###############################################################################
# set the frequency or period of a "clock".
# format: acf_set_period <acf> <clock> <ns>
###############################################################################
proc acf_set_period {acf clock value} {
    global $acf acfmode
    global _period_
    set _period_($clock) $value
    set value [expr 1000/$value]MHz

    global $acf
    if {$clock == {}} {
        switch -exact -- $acfmode {
            UNDO {acf_rmv_attr $acf "TIMING_POINT" "\tFREQUENCY"}
            default {acf_set_attr $acf "TIMING_POINT" "\tFREQUENCY" $value}
        }
    } else {
        switch -exact -- $acfmode {
            UNDO {acf_rmv_attr $acf "TIMING_POINT" "\t$clock :\tFREQUENCY"}
            default {acf_set_attr $acf "TIMING_POINT" "\t$clock :\tFREQUENCY" $value}
        }
    }
    return $value
}

###############################################################################
# set the pad-to-register setup time requirement of a clock.
# format: acf_set_tsu <acf> <clock> <object> <value>
# important: acf_set_period must have been called on the same clock.
###############################################################################
proc acf_set_tsu {acf clock object value} {
    global $acf acfmode
    global _period_
    if {[catch {set _period_($clock)}] == 1} {
        error "acf_set_period must preceed acf_set_tsu with same clock"
    }

    set value [expr $_period_($clock) - $value]
    set value [format "%sns" $value]
    
    if {$object == {}} {
        switch -exact -- $acfmode {
            UNDO {acf_rmv_attr $acf "TIMING_POINT" "\tTSU"}
            default {acf_set_attr $acf "TIMING_POINT" "\tTSU" $value}
        }
    } else {
        switch -exact -- $acfmode {
            UNDO {acf_rmv_attr $acf "TIMING_POINT" "\t$object :\tTSU"}
            default {acf_set_attr $acf "TIMING_POINT" "\t$object :\tTSU" $value}
        }
    }
}

###############################################################################
# set register-to-output delay to a specified "value".
# format: acf_set_tco <acf> <clock> <object> <ns>
# important: acf_set_period must have been called on the same clock.
###############################################################################
proc acf_set_tco {acf clock object value} {
    global $acf acfmode
    global _period_
    if {[catch {set _period_($clock)}] == 1} {
        error "acf_set_period must preceed acf_set_tco with same clock"
    }

    set value [expr $_period_($clock) - $value]
    set value [format "%sns" $value]
    if {$object == {}} {
        switch -exact -- $acfmode {
            UNDO {acf_rmv_attr $acf "TIMING_POINT" "\tTCO"}
            default {acf_set_attr $acf "TIMING_POINT" "\tTCO" $value}
        }
    } else {
        switch -exact -- $acfmode {
            UNDO {acf_rmv_attr $acf "TIMING_POINT" "\t$object :\tTCO"}
            default {acf_set_attr $acf "TIMING_POINT" "\t$object :\tTCO" $value}
        }
    }
    return $value
}

###############################################################################
# assign "object" to pin location "value".
###############################################################################
proc acf_set_pin {acf object value} {
    global $acf _design_ acfmode
    if {[catch {set _design_}] == 1} {
        error "define_design_name must preceed all acf_set_pin calls"
    }

    switch -exact -- $acfmode {
        UNDO {acf_rmv_attr $acf "CHIP $_design_" "\t$object :\tPIN"}
        default {acf_set_attr $acf "CHIP $_design_" "\t$object :\tPIN" $value}
    }
}

###############################################################################
# assign "object" to be implemented in EAB.
###############################################################################
proc acf_set_eabize {acf object value} {
    global $acf acfmode
    switch -exact -- "$value" {
        0 {set value {OFF}}
        1 {set value {ON}}
        default {error "illegal value $value for $assign"}
    }
    
    switch -exact -- $acfmode { 
        UNDO {acf_rmv_attr $acf "LOGIC_OPTIONS" "\t$object :\tIMPLEMENT_IN_EAB"} 
        default {acf_set_attr $acf "LOGIC_OPTIONS" "\t$object :\tIMPLEMENT_IN_EAB" $value}
    }
}

###############################################################################
# add "object" to clique "clique". Create "clique" if it does not exist.
###############################################################################
proc acf_set_clique {acf clique object} {
    global $acf acfmode
    switch -exact -- $acfmode {
        UNDO {acf_rmv_attr $acf "CLIQUE $clique" "\t$object :\tCLIQUE"}
        default {acf_set_attr $acf "CLIQUE $clique" "\t$object :\tCLIQUE" {}}
    }
}

###############################################################################
# clear all cliques prefixed by "synplify_" in an "acf".
###############################################################################
proc acf_delete_cliques {acf} {
    global $acf
    set i 0
    foreach section [set $acf] {
        global $section
        if {[regexp {^CLIQUE synplify_} [set [sec_get_name $section]]] == 1} {
            set $acf [lreplace [set $acf] $i $i ]
            sec_free $section
            continue;
        }
        incr i
    }
}

###############################################################################
# set ACF parameters related to synthesis. Unsupported parameters will be
# ignored.
#
# format: define_synthesis <-style | -family | -effort | -inverter_push_back |
#   -max9k_multi_level | -max5_7k_multi_level | -one_hot_fsm | -device |
#   -auto_fast_io | -timing_constraint> <value>
#
# where <value> is
#   <NORMAL | FAST | WYSIWYG | <style name>> for -style
#   <FLEX10K | MAX9000 | FLEX8000 | MAX7000 | FLEX6000 | MAX5000 | CLASSIC> 
#       for -family
#   <0-10 | DEFAULT> for -effort
#   <ON | OFF | DEFAULT | NULL> for inverter_push_back
#   <ON | OFF> for -max9k_multi_level and -max5_7k_multi_level
#   <ON | OFF> for -one_hot_fsm 
#   <ON | OFF> for -auto_fast_io
#   <ON | OFF> for -timing_constraint
#
# important: global "acf" and "acfmode" must have been set. If "acfmode" is
# set to UNDO, the function removes and frees attributes with specified names
# rather than setting them.
# 
# Revision
# 09/04/98	Sandeep		Removes redundent speed grade specification
#				From the device field. 
#				Example:
#	
#				define_synthesis -device {epf10k40rc208-1-1} is
#				translated as 
#				DEVICE = epf10k40rc208-1;
#
#				Changes are made in -DEVICE switch in the code
#				below.
###############################################################################
proc define_synthesis {option value} {
    global acf acfmode
    global $acf
    switch -exact -- "$value" {
        0 {set $value {OFF}}
        1 {set $value {ON}}
    }

    switch -exact -- "$option" {
        -style {
            global _synthesis_style_
            set _synthesis_style_ $value
            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tSTYLE"}
                default {acf_set_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tSTYLE" $value}
            }
        }

        -family {
            if {$value != "FLEX10K" && $value != "MAX9000" && $value != "FLEX8000" && \
                $value != "MAX7000" && $value != "FLEX6000" && $value != "MAX5000"} {
                error "family device must be one of the following FLEX10K, MAX9000, FLEX8000, MAX7000, FLEX6000, or MAX5000"
            }

            global _device_family_
            set _device_family_ $value
            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tDEVICE_FAMILY"}
                default {acf_set_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tDEVICE_FAMILY" $value}
            }
        }

        -effort {
            if {$value < 0 || $value > 10} {
                error "synthesis effort must be an integer from 0 to 10"
            }
            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tOPTIMIZE_FOR_SPEED"}
                default {acf_set_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tOPTIMIZE_FOR_SPEED" $value}
            }
        }

        -inverter_push_back {
            if {$value != "ON" && $value != "OFF" && 
                $value != "DEFAULT" && $value != "NULL"} {
                error "inverter push back must be set to ON, OFF, DEFAULT, or NULL"
            }

            global _device_family_ _synthesis_style_
            if {[catch {set _device_family_}] == 1 || 
                [catch {set _synthesis_style_}] == 1} {
                error "define_synthesis -style and -family must preceed -inverter_push_back"
            }

            set style $_synthesis_style_
            set family $_device_family_
            set section [acf_get_sec $acf $style.$family]
            if {$section == {} && [regexp {^FLEX} $family] == 1} {
                set family "FLEX8000"
                set section [acf_get_sec $acf $style.$family]
            }

            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "DEFINE_LOGIC_SYNTHESIS_STYLE $style.$family" "\tNOT_GATE_PUSH_BACK"}
                default {acf_set_attr $acf "DEFINE_LOGIC_SYNTHESIS_STYLE $style.$family" "\tNOT_GATE_PUSH_BACK" $value}
            }
        }

        -max9k_multi_level {
            if {$value != "ON" && $value != "OFF"} {
                error "MAX9000 multilevel synthesis must be set to ON or OFF"
            }

            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tMULTI_LEVEL_SYNTHESIS_MAX9000"}
                default {acf_set_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tMULTI_LEVEL_SYNTHESIS_MAX9000" $value}
            }
        }

        -max5_7k_multi_level {
            if {$value != "ON" && $value != "OFF"} {
                error "MAX5000-7000 multilevel synthesis must be set to ON or OFF"
            }

            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tMULTI_LEVEL_SYNTHESIS_MAX5000_7000"}
                default {acf_set_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tMULTI_LEVEL_SYNTHESIS_MAX5000_7000" $value}
            }
        }

        -one_hot_fsm {
            if {$value != "ON" && $value != "OFF"} {
                error "1-HOT FSM encoding must be set to ON or OFF"
            }

            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tONE_HOT_STATE_MACHINE_ENCODING"}
                default {acf_set_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tONE_HOT_STATE_MACHINE_ENCODING" $value}
            }
        }           

        -device {
            global _design_
            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "CHIP $_design_" "\tDEVICE"}
                default {
			regsub {([a-zA-Z0-9]*)-([0-9]*)-([0-9]*)} $value {\1-\2} new_value
			acf_set_attr $acf "CHIP $_design_" "\tDEVICE" $new_value 
			}
            }
        }

        -auto_fast_io {
            if {$value != "ON" && $value != "OFF"} {
                error "auto_fast_io must be set to ON or OFF"
            }

            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tAUTO_FAST_IO"}
                default {acf_set_attr $acf "GLOBAL_PROJECT_SYNTHESIS_ASSIGNMENT_OPTIONS" "\tAUTO_FAST_IO" $value}
            }
        }

        -timing_constraint {
            if {$value == "ON"} {
				set v "OFF"
			} elseif {$value == "OFF"} {
				set v "ON"
			} else {
                error "timing_constraint must be set to ON or OFF"
            }

            switch -exact -- $acfmode {
                UNDO {acf_rmv_attr $acf "IGNORED_ASSIGNMENTS" "\tIGNORE_TIMING_ASSIGNMENTS"}
                default {acf_set_attr $acf "IGNORED_ASSIGNMENTS" "\tIGNORE_TIMING_ASSIGNMENTS" $v}
            }
        }

        default {
            puts "unsupported synthesis option $option"
        }
    }
}

###############################################################################
# set an object to a lab location (e.g. LAB_A14). All objects with the same
# location will be grouped together by MaxPlusII.
###############################################################################
proc set_object_location {object loc} {
    global acf acfmode _design_
    global $acf

    if {[catch {set _design_}] == 1} {
        error "define_design_name must preceed all set_object_location calls"
    }
    switch -exact -- $acfmode {
        UNDO {acf_rmv_attr $acf "CHIP $_design_" "\t$object :\tLOCATION"}
        default {acf_set_attr $acf "CHIP $_design_" "\t$object :\tLOCATION" $loc}
    }
}

###############################################################################
# assign (bitport) name to a pin
###############################################################################
proc set_pin_location {name pin} {
    global acf acfmode _design_
    global $acf

    if {[catch {set _design_}] == 1} {
        error "define_design_name must preceed all set_object_location calls"
    }

	regsub -nocase {^([0-9a-z]|_)*@} $pin "" pin
	if {[regexp {^\|} $name] != 1} {
		set name "\|$name";
	}

    switch -exact -- $acfmode {
        UNDO {acf_rmv_attr $acf "CHIP $_design_" "\t$name :\tPIN"}
        default {acf_set_attr $acf "CHIP $_design_" "\t$name :\tPIN" $pin}
    }
}

###############################################################################
# clear all cliques generated by synplify.
# important: global "acf" must have been set.
###############################################################################
proc clear_auto_cliques {} {
    global acf
    global $acf
    acf_delete_cliques $acf
}

###############################################################################
# add an "object" to "clique".
# important: global "acf" must have been set.
###############################################################################
proc add_object_to_clique {object clique} {
    global acf
    acf_set_clique $acf synplify_$clique $object
}

###############################################################################
# set "_design_" to a specified "name"
###############################################################################
proc define_design_name {name} {
    global _design_
    set _design_ $name
}

###############################################################################
# fill the global "acf" object with data from a specified ACF file. Note that
# the ACF file does not have to exist.
###############################################################################
proc open_acf {name} {
    global acf _acfname_ _lineno_
    set _acfname_ $name
    set acf [acf_alloc $name]
}

###############################################################################
# write the global "acf" object to a the previous ACF file defined by the
# open_acf call. Also free global "acf" object.
###############################################################################
proc close_acf {} {
    global acf _acfname_ _synthesis_style_ _device_family_
    global $acf acfmode

    switch -exact -- $acfmode {
        UNDO {
            acf_rmv_attr $acf "COMPILER_INTERFACES_CONFIGURATION" "\tEDIF_INPUT_GND"
            acf_rmv_attr $acf "COMPILER_INTERFACES_CONFIGURATION" "\tEDIF_INPUT_VCC"
            acf_rmv_attr $acf "COMPILER_INTERFACES_CONFIGURATION" "\tEDIF_INPUT_LMF1"
            acf_rmv_attr $acf "COMPILER_INTERFACES_CONFIGURATION" "\tEDIF_INPUT_USE_LMF1"
        }

        default {
            acf_set_attr $acf "COMPILER_INTERFACES_CONFIGURATION" "\tEDIF_INPUT_GND" "GND"
            acf_set_attr $acf "COMPILER_INTERFACES_CONFIGURATION" "\tEDIF_INPUT_VCC" "VCC"
            acf_set_attr $acf "COMPILER_INTERFACES_CONFIGURATION" "\tEDIF_INPUT_LMF1" "synplcty.lmf"
            acf_set_attr $acf "COMPILER_INTERFACES_CONFIGURATION" "\tEDIF_INPUT_USE_LMF1" "ON"
        }
    }

    if {[catch {unset _synthesis_style_}] == 1} {}
    if {[catch {unset _device_family_}] == 1} {}
    set file [open $_acfname_ "w"]
    acf_write $acf $file
    close $file
    global $acf
    acf_free $acf
    unset acf
}
