#
# User Interface Commands
#
proc project {args} {
    if [expr [llength $args] < 1] {
        warn {project usage: project option {value}}
    }
    set sw   [lindex $args 0]
    set args [lrange $args 1 end]
    switch -- $sw {
        "_begin_obsolete" { #start of obsolete  }
        "-architecture"   { technology    $args }
        "-part"           { part          $args }
        "-package"        { package       $args }
        "-speed_grade"    { speed_grade   $args }
        "-top_module"     { top_module    $args }
        "_end_obsolete"   { #end of obsolete    }

        "-new"            { new_project         }
        "-run"            { run_project   TRUE  }
        "-compile"        { run_project   FALSE }
        "-load"           { load_project  $args }
        "-save"           { save_project  $args }
        "-result_file"    { result_file   $args }
        "-result_format"  { result_format $args }
        "-log_file"       { log_file      $args }
        default 
            { warn [format "project: unknown option %s" $sw] }
    }
}

proc set_option {args} {
    if [expr [llength $args] < 2] {
        warn {set_option usage: set_option option value}
    }
    set sw   [lindex $args 0]
    set args [lrange $args 1 end]
    foreach arg $args {
        switch -- $sw {
            "_begin_obsolete"          { #start of obsolete                  }
            "-default_state_machine_encoding" 
                                       { default_enum_encoding          $arg }
            "_end_obsolete"            { #end of obsolete                    }

            "-technology"              { technology                     $arg }
            "-part"                    { part                           $arg }
            "-package"                 { package                        $arg }
            "-speed_grade"             { speed_grade                    $arg }
            "-top_module"              { top_module                     $arg }
            "-default_enum_encoding"   { default_enum_encoding          $arg }
            "-symbolic_fsm_compiler"   { symbolic_fsm_compiler          $arg }
            "-resource_sharing"        { resource_sharing               $arg }
            "-write_verilog"           { write_verilog                  $arg }
            "-write_vhdl"              { write_vhdl                     $arg }
            "-write_apr_constraint"    { write_apr_constraint           $arg }
            "-frequency"               { frequency                      $arg }
            "-area_delay_percent"      { area_delay_percent             $arg }
            "-disable_io_insertion"    { disable_io_insertion           $arg }
            "-xilinx_m1"               { xilinx_m1                      $arg }
            "-cliquing"                { cliquing                       $arg }
            "-fanin_limit"             { fanin_limit                    $arg }
            "-fanout_limit"            { fanout_limit                   $arg }
            "-maxfan_hard"             { maxfan_hard                    $arg }
            "-force_gsr"               { force_gsr                      $arg }
            "-map_logic"               { map_logic                      $arg }
            "-max_terms_per_macrocell" { max_terms_per_macrocell        $arg }
            "-soft_buffers"            { soft_buffers                   $arg }
            "-use_reset_pin"           { use_reset_pin                  $arg }
            "-_effort"                 { _effort                        $arg }
            "-mti_root"                { set_mti_root                   $arg }
            default 
                { warn [format "set_option: unknown option %s" $sw] }
        }
    }
}

proc add_file {args} {
    if [expr [llength $args] < 2] {
        warn {add_file usage: add_file option value}
    }
    #default library
    set lib work
    set sw   [lindex $args 0]
    set args [lrange $args 1 end]

    #Loop through arguments checking for -lib flag
    for {set i 0} {$i < [llength $args]} {incr i} {
        set arg [lindex $args $i]
        if {$arg == "-lib"} {
            set lib [lindex $args [incr i]] 
            continue
        }
        switch -- $sw {
            "-verilog"       { add_verilog_file    -lib $lib $arg }
            "-vhdl"          { add_vhdl_file       -lib $lib $arg }
            "-board"         { add_board_file      -lib $lib $arg }
            "-constraint"    { add_constraint_file           $arg }
            "-_include"      { _add_include                  $arg }
            "-include_path"  { include_path                  $arg }
            "-_pasic"        { _pasic_property_file          $arg }
            "-plan"          { add_plan_file                 $arg }
            default 
                { warn [format "add_file: unknown option %s" $sw] }
        }
    }
}

proc open_file {args} {
    if [expr [llength $args] < 1] {
        warn {open_file usage: open_file option {value}}
    }
    set sw   [lindex $args 0]
    set args [lrange $args 1 end]
    switch -- $sw {
        "-edit_file"         { edit_file       $args }
        "-rtl_view"          { rtl_view              }
        "-technology_view"   { technology_view       }
        default 
            { warn [format "open_file: unknown option %s" $sw]
        }
    }
}
