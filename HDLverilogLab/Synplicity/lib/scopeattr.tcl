set actel "act* 40* 42* 32* 54*"
set altera "max* flex*"
set philips "cool*"
set vantis "Mach*"
set dynachip "DL*"
set lattice "pLSI*"
set quicklogic "pasic*"
set lucent "orca*"
set xilinx "xc* vir* spart*"
set asic "asic*" 
add_scope_attr {syn_isclock} {*} {input_port} {boolean} {} {Input port on a black box is a clock}
add_scope_attr {syn_noprune} {*} {module} {boolean} {} {Retain instance when outputs are unused}
add_scope_attr {syn_noprune} {*} {cell} {boolean} {} {Retain instance when outputs are unused}
add_scope_attr {syn_useenables} {*} {register} {boolean} {} {Generate with clock enable pin}
add_scope_attr {syn_useioff} "$lucent" {port} {boolean} {} {Embed flip-flps in the IO ring}
add_scope_attr {syn_maxfan} "$actel $xilinx $lucent $quicklogic $altera" {input_port} {integer} {} {Overrides the default fanout}
add_scope_attr {syn_maxfan} "$actel $xilinx $lucent $quicklogic $altera" {register_output} {integer} {} {Overrides the default fanout}
add_scope_attr {syn_maxfan} "$actel $xilinx $lucent $quicklogic $altera" {cell} {integer} {} {Overrides the default fanout}
add_scope_attr {syn_noclockbuf} {*} {clock} {boolean} {} {Use normal input buffer}
add_scope_attr {syn_ramstyle} "$altera $xilinx $lucent" {register} {string} {registers} {Map inferred RAM to registers}
add_scope_attr {syn_noarrayports} {*} {global} {boolean} {} {Disable array ports}
add_scope_attr {syn_netlist_hierarchy} {*} {global} {boolean} {} {Disable hierarchy reconstruction}
add_scope_attr {syn_netlist_hierarchy} {*} {module} {boolean} {} {Disable hierarchy reconstruction}
add_scope_attr {syn_hier} {*} {module} {string} {} {Control hierarchy flattening (soft,firm,remove,macro)}
add_scope_attr {alspin} "$actel" {port} {string} {} {Pin locations for Actel I/Os}
add_scope_attr {altera_chip_pin_lc} "$altera" {port} {string} {@nn} {I/O pin location}
add_scope_attr {altera_implement_in_eab} "$altera" {module} {boolean} {1} {Implment in Altera EABs}
add_scope_attr {altera_area} "$altera" {module} {integer} {} {Number of LCELLs}
add_scope_attr {lock} "$lattice" {port} {string} {} {Pin locations for Lattice I/Os}
add_scope_attr {din} "$lucent" {input_port} {string} {} {Input register goes next to I/O pad}
add_scope_attr {dout} "$lucent" {output_port} {string} {} {Output register goes next to I/O pad}
add_scope_attr {loc} "$lucent" {port} {string} {} {Pin location}
add_scope_attr {orca_padtype} "$lucent" {port} {string} {} {Pad type for I/O}
add_scope_attr {ql_padtype} "$quicklogic" {port} {string} {} {Override default pad types (use BIDIR, INPUT, CLOCK)}
add_scope_attr {ql_placement} "$quicklogic" {port} {string} {} {Placement location}
add_scope_attr {ql_placement} "$quicklogic" {cell} {string} {} {Placement location}
add_scope_attr {xc_loc} "$xilinx" {port} {string} {} {Port placement}
add_scope_attr {xc_rloc} "$xilinx" {port} {string} {} {}
add_scope_attr {xc_uset} "$xilinx" {port} {string} {} {}
add_scope_attr {xc_fast} "$xilinx" {output_port} {boolean} {} {Fast transition time}
add_scope_attr {xc_ioff} "$xilinx" {port} {boolean} {} {Turn on/off use of internal flip-flops of the IOB}
add_scope_attr {xc_nodelay} "$xilinx" {input_port} {boolean} {} {Remove input delay}
add_scope_attr {xc_slow} "$xilinx" {output_port} {boolean} {} {Slow transition time}
add_scope_attr {xc_ttl} "$xilinx" {port} {boolean} {} {Use TTL pad type}
add_scope_attr {xc_cmos} "$xilinx" {port} {boolean} {} {Use CMOS pad type}
add_scope_attr {xc_pullup} "$xilinx" {port} {boolean} {} {Add a pullup}
add_scope_attr {xc_pulldown} "$xilinx" {port} {boolean} {} {Add a pulldown}
add_scope_attr {xc_clockbuftype} "$xilinx" {input_port} {string} {BUFGDLL} {Use the Xilinx BUFGDLL clock buffer}
add_scope_attr {xc_padtype} "$xilinx" {input_port} {string} {} {Applies an I/O standard to an I/O buffer}
add_scope_attr {xc_global_buffers} "$xilinx" {global} {integer} {} {Number of global buffers}
add_scope_attr {xc_alias} "$xilinx" {cell} {string} {} {Cell name change in XNF writer}
add_scope_attr {xc_props} "$xilinx" {cell} {string} {} {Extra XNF attributes to pass for instance}
add_scope_attr {xc_map} "$xilinx" {cell} {string} {} {Map entity to fmap/hmap/lut}
add_scope_attr {xc_isgsr} "$xilinx" {input_port} {boolean} {} {Reset pin connected to an internal STARTUP block }
