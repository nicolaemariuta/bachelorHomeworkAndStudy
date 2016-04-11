# $Header: s:/rcs/misc/RCS/map.tcl 1.20 1999/02/10 22:42:03 harvey Exp $
# TCL commands to implement constraints
#
# #puts "Loading .../synplcty/lib/map.tcl"

#
# set up global variable _lib_
#
set _lib_ "SYNPLIFY"
#
# Set up global _ScopeVer_ (Scope version)
set _ScopeVer_ 508


#
# General attribute mechanism
#
# args: [-disable] object propname str
#
global g_clk
set g_clk ""
proc define_attribute {args} {
    global _lib_

    set disable 0
    set object [lindex $args 0]
    set args [lrange $args 1 end]
    if {$object == "-disable"} {
         set disable 1
         set object [lindex $args 0]
         set args [lrange $args 1 end]
    }
    set propname [lindex $args 0]
    set args [lrange $args 1 end]

    set str [lindex $args 0]
    set args [lrange $args 1 end]

    if {$_lib_ == "SYNPLIFY"} {
        if {$disable == 0} {
            synplify_define_attribute $object $propname $str
        }
    } elseif {$_lib_ == "SETACF"} {
        if {$disable == 0} {
            global acf
            switch -exact -- $propname {
                altera_implement_in_eab {
                    acf_set_eabize $acf $object $str
                }

                altera_chip_pin_lc {
                    acf_set_pin $acf $object $str
                }
            }
        }
    } elseif {$_lib_ == "SETCONST"} {
        add_attr_constraint $disable $object $propname $str
    }
}

# top level attribute
# args: [-disable] propname str
#
proc define_global_attribute {args} {
    global _lib_
    set disable 0
    set propname [lindex $args 0]
    set args [lrange $args 1 end]
    if {$propname == "-disable"} {
         set disable 1
         set propname [lindex $args 0]
         set args [lrange $args 1 end]
    }
    set str [lindex $args 0]
    set args [lrange $args 1 end]
    if {$_lib_ == "SYNPLIFY"} {
        if {$disable == 0} {
            synplify_define_attribute {t:} $propname $str
        }
    } elseif {$_lib_ == "SETCONST"} {
        add_attr_constraint $disable "<global>" $propname $str
    }
}

#
# User timing constraints
#
proc define_clock {args} {
    global _lib_
    global _ScopeVer_
    if [expr [llength $args] < 3] {
        error {define_clock usage: [-disable] <object> [-freq <freq>] [-period <period>] [-duty_ns <dutycycle> | -duty_pct <dutycycle>] [ -improve <improve> ] [-route <route> ]}
    }
    set disable 0
    set objname [lindex $args 0]
    set args [lrange $args 1 end]
    if {$objname == "-disable"} {
         set disable 1
         set objname [lindex $args 0]
         set args [lrange $args 1 end]
    }

    # Defaults
    set clocksw "-period"
    set clockvalue 0.0
    set period 0.0
    set dutysw "-duty_ns"
    set dutyvalue 0.0
    set dutypct 0
    set improve 0.0
    set route 0.0

    while { [expr [llength $args] >0] } {
        set sw [lindex $args 0]
        set args [lrange $args 1 end]
        set value [ lindex $args 0 ]
        set args [lrange $args 1 end]
        switch -- $sw {
        "-period" {
            set clockvalue $value
            set clocksw $sw
            set period $value
        }
        "-freq" {
            set clockvalue $value
            set clocksw $sw
            set period $value
            if { [expr $period > 0] } {
                set period [expr 1000.0 / $period]
            }
        }
        "-duty_pct" {
            set dutyvalue $value
            set dutysw $sw
            set dutypct 1
        }
        "-duty_ns" {
            set dutyvalue $value
            set dutysw $sw
        }
        "-improve" {
            set improve $value
        }
        "-route" {
            set route $value
        }
        default {
            error [format "define_clock: unknown switch %s" $sw]
            }
        }
    }

    # Note: dutycycle contains the either 0 (unspecified) or dutycycle
    # in ns

    if { $dutypct == 1} {
        set dutycycle [expr $dutyvalue * $period / 100]
    } else {
        set dutycycle $dutyvalue
    }

    if {$_lib_ == "SYNPLIFY"} {
        if {$disable == 0} {
            synplify_define_attribute $objname syn_clock $period
            if { $improve != 0.0 } {
                synplify_define_attribute $objname syn_clock_improve $improve
            }
            if { $route != 0.0 } {
                synplify_define_attribute $objname syn_clock_route $route
            }
            if { $dutycycle != 0.0 } {
                # #### Insert call to define dutycycle here ! ####
                set low [expr $period - $dutycycle]
                synplify_define_edge_edge_delay "$objname"  "!$objname" $dutycycle
                synplify_define_edge_edge_delay "!$objname" "$objname"  $low
            }
        }
    } elseif {$_lib_ == "SETACF"} {
        if {$disable == 0} {
            global acf
            acf_set_period $acf $objname $period
        }
    } elseif {$_lib_ == "SETCONST"} {
       if { $_ScopeVer_ < 510 } { 
            add_clock_constraint $disable $objname $clocksw $clockvalue
        } else {
            add_clock_constraint $disable $objname $clocksw $clockvalue $dutysw $dutyvalue $improve $route
        }
    }
}

proc define_clock_delay_usage {args} {
    error {define_clock_delay usage: [-rise|-fall] <clock1> [-rise|-fall] <clock2> <delay>}
}

#
# Define delay between clocks edges. 
#
proc define_clock_delay {args} {
    global _lib_
    global _ScopeVer_
    if [expr [llength $args] < 3] {
        define_clock_delay_usage
    }
    set disable 0
    set a [lindex $args 0]
    set args [lrange $args 1 end]
    if {$a == "-disable"} {
         set disable 1
         set a [lindex $args 0]
         set args [lrange $args 1 end]
    }
    if {$a == "-rise"} {
        set clock1dir ""
    } elseif {$a == "-fall"} {
        set clock1dir "!"
    } else {
        define_clock_delay_usage
    }
    set e1 $a
    set clock1 [lindex $args 0]
    set args [lrange $args 1 end]
    set a [lindex $args 0]
    set args [lrange $args 1 end]
    if {$a == "-rise"} {
        set clock2dir ""
    } elseif {$a == "-fall"} {
        set clock2dir "!"
    } else {
        define_clock_delay_usage
    }
    set e2 $a
    set clock2 [lindex $args 0]
    set args [lrange $args 1 end]
    set delay [lindex $args 0]
    set args [lrange $args 1 end]
    if {$_lib_ == "SYNPLIFY"} {
        if {$disable == 0} {
            if {$delay == "-false"} {
                set delay 10000.0
            }
            set clock1 "$clock1dir$clock1"
            set clock2 "$clock2dir$clock2"
            synplify_define_edge_edge_delay $clock1 $clock2 $delay
        }
    } elseif {$_lib_ == "SETCONST"} {
        if { $_ScopeVer_ < 510 } {
            error {define_clock_delay not supported by SCOPE}
        } else {
            add_clock_delay_constraint $disable $e1 $clock1 $e2 $clock2 $delay
        }
    }
}

#
# Helper functions for defining delay constraints
#
proc define_delay_prop_error {propbase} {
error "define_${propbase}_delay: <portname> <delay> -improve <delay> -route <delay>"
}

proc define_delay_prop {propbase alist} {
    global _lib_ g_clk
    set clock ""
    set improve 0.0
    set route 0.0
    set delay 0.0
    set disable 0
    set len [llength $alist]
    if [expr $len < 1] { 
        #puts "Not enough arguments"
        define_delay_prop_error $propbase
    }
    set objname [lindex $alist 0]
    set alist [lrange $alist 1 end]
    if {$objname == "-disable"} {
         set disable 1
         set objname [lindex $alist 0]
         set alist [lrange $alist 1 end]
        set len [expr $len - 1]
    }
    if [string match "-default" $objname] {
        set objname {t:}
    }
    set len [expr $len - 1]
    while 1 {
        if [expr $len <= 0] { break }
        set sw [lindex $alist 0]
        set alist [lrange $alist 1 end]
        set len [expr $len - 1]
        if {$sw == "-disable"} {
            set disable 1
        } elseif [string match {-[a-z]*} $sw] {
            set value [lindex $alist 0]
            set alist [lrange $alist 1 end]
            set len [expr $len - 1]
            switch -- $sw {
            "-improve" {
                set prop "syn_${propbase}_delay_improve"
                set improve $value
              }
            "-route" {
                set prop "syn_${propbase}_delay_route"
                set route $value
              }
            "-clock" {
                set prop "syn_${propbase}_clock"
                set clock $value
                set g_clk $value
              }
            default {
                #puts "unknown switch $sw"
                define_delay_prop_error $propbase
              }
            }
        } else {
            set prop "syn_${propbase}_delay"
            set value $sw
            set delay $value
        }

        if {$_lib_ == "SYNPLIFY"} {
            if {$disable == 0} {
                synplify_define_attribute $objname $prop $value
            }
        }
    }

    if {$_lib_ == "SETACF"} {
        if { $disable == 0 } {
            global acf
            switch -exact -- $propbase {
                input {
                    if {[string compare $clock ""] == 0} {
                    acf_set_tsu $acf $g_clk $objname $delay
                    } else {
                    acf_set_tsu $acf $clock $objname $delay
                }
                     }

                output {
                     if {[string compare $clock ""] == 0} {
                     acf_set_tco $acf $g_clk $objname $delay
                     } else {
                    acf_set_tco $acf $clock $objname $delay
                    }
                }
            }
        }
    } elseif {$_lib_ == "SETCONST"} {
        set prop "syn_${propbase}_clock"
        add_delay_constraint $disable "${propbase}" $objname $delay $improve $route $clock
    }
}

#
# The delay constraint commands
# Args: [-disable] <object> [ [ , -improve, -route] <delay>, -clock <clockname>]*
#
proc define_input_delay {args} {
    define_delay_prop input $args
}

proc define_output_delay {args} {
    define_delay_prop output $args
}

proc define_reg_input_delay {args} {
    define_delay_prop reg_input $args
}

proc define_reg_output_delay {args} {
    define_delay_prop reg_output $args
}

proc define_multicycle_path {args} {
    if [expr [llength $args] < 2] {
        error "define_multicycle_path: -from <start> -to <end> <cycles>"
    }
    global _lib_
    set disable 0
    set foundfrom 0
    set foundto 0
    set foundthrough 0
    set cycles 2
    set sw [lindex $args 0]
    set args [lrange $args 1 end]
    if {$sw == "-disable"} {
        set disable 1
        set sw [lindex $args 0]
        set args [lrange $args 1 end]
    }
    if {$sw == "-from"} {
        set foundfrom 1
        set from [lindex $args 0]
        set args [lrange $args 1 end]
        set sw [lindex $args 0]
        set args [lrange $args 1 end]
    }
    if {$sw == "-to"} {
        set foundto 1
        set to [lindex $args 0]
        set args [lrange $args 1 end]
        set sw [lindex $args 0]
        set args [lrange $args 1 end]
    }
    if {$sw == "-through"} {
        set foundthrough 1
        set through [lindex $args 0]
        set args [lrange $args 1 end]
        set sw [lindex $args 0]
        set args [lrange $args 1 end]
    }
    if [string match {-[a-z]*} $sw] {
        error "define_multicycle_path: Unknown switch $sw"
    }
    set cycles $sw
    if [expr $foundfrom && $foundto || $foundfrom && $foundthrough || $foundto && $foundthrough ] {
    error "define_multicycle_path: Illegal use of more than one of -from, -to, -through"
    }
    if {$_lib_ == "SYNPLIFY"} {
        if { $disable == 0 } {
            if $foundfrom {
                synplify_define_attribute $from syn_multicycle_start $cycles
            }
            if $foundto {
                synplify_define_attribute $to syn_multicycle_end $cycles
            } 
            if $foundthrough {
                synplify_define_attribute $through syn_multicycle_through $cycles
            }
        }
    } elseif {$_lib_ == "SETCONST"} {
        if $foundfrom {
            add_multi_constraint $disable -from $from $cycles
        }
        if $foundto {
            add_multi_constraint $disable -to $to $cycles
        } 
        if $foundthrough {
            add_multi_constraint $disable -through $through $cycles
        } 
    }
}

# counter to make unique ids for attributes
set syn_tid 1000

proc fix_view_name {view} {
    if { [string range $view 0 1] != {v:} } {
        set view "v:$view"
    }
    return $view
}

# base implementation for tpd tco tsu timing arcs
proc _define_timing_arc { cmd base alist } {
    global _lib_
    global syn_tid

    set disable 0
    set len [llength $alist]
    if [expr $len < 2] { 
        error [format "%s: not enough arguments" $cmd]
    }
    set view [lindex $alist 0]
    set alist [lrange $alist 1 end]
    if {$view == "-disable"} {
        set disable 1
        set view [lindex $alist 0]
        set alist [lrange $alist 1 end]
    }
    set len [llength $alist]
    if [ expr $len != 1 ] { 
        error [format "%s: wrong number of arguments" $cmd]
    }
    set view [fix_view_name $view]
    set arcstr [lindex $alist 0]
    if {$_lib_ == "SYNPLIFY"} {
        if {$disable == 0} {
            synplify_define_attribute $view "$base$syn_tid" $arcstr
            incr syn_tid
        }
    } elseif {$_lib_ == "SETCONST"} {
        add_unknown_constraint $cmd $disable $view $arcstr
    }
}

# define timing arc from input pin to output pin.
proc define_tpd {args} {
    _define_timing_arc define_tpd syn_tpd $args
}

# define setup arc from input pin to clock pin
proc define_tsu {args} {
    _define_timing_arc define_tsu syn_tsu $args
}

#define clock to output arc
proc define_tco {args} {
    _define_timing_arc define_tco syn_tco $args
}

# #puts "Done loading .../synplcty/lib/map.tcl"
