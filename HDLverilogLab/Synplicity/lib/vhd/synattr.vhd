-----------------------------------------------------------------------------
--                                                                         --
-- Copyright (c) 1997 by Synplicity, Inc.  All rights reserved.            --
--                                                                         --
-- This source file may be used and distributed without restriction        --
-- provided that this copyright statement is not removed from the file     --
-- and that any derivative work contains this copyright notice.            --
--                                                                         --
--                                                                         --
--  Library name: synplify                                                 --
--  Package name: attributes                                               --
--                                                                         --
--  Description:  This package contains declarations for synplify          --
--                attributes                                               --
--                                                                         --
--                                                                         --
--                                                                         --
-----------------------------------------------------------------------------
-- Author:  Suresh Gopalrathnam, Synplicity Inc.
--

 -- Definitions used for Scope Integration ----------------
 --{tcl set actel "act* 40* 42* 32* 54*"}
 --{tcl set altera "max* flex*"}
 --{tcl set philips "cool*"} 
 --{tcl set vantis "Mach*"}
 --{tcl set dynachip "DL*"}
 --{tcl set lattice "pLSI*"}
 --{tcl set quicklogic "pasic*"}
 --{tcl set lucent "orca*"}
 --{tcl set xilinx "xc* vir* spart*"}
 --{tcl set asic "asic*" }
 -------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;

package attributes is
    
 -- Compiler attributes

  -- {family *}

 -- syn_encoding specifies the encoding for an enumeration type
 attribute syn_encoding : string;       -- "onehot", "sequential", "gray" {noscope}
 attribute syn_state_machine : boolean; -- marks reg for SM extraction {noscope}
 --
 -- syn_preserve prevents optimization across registers it is
 -- applied to.  syn_preserve on a module/arch is applied to all
 -- registers in the module/arch.  syn_preserve on a register
 -- will preserve redundant copies.
 -- Can also be used to preserve redundant copies of instantiated
 -- combinational cells.
 attribute syn_preserve : boolean; -- {noscope}

 -- syn_keep is used on signals keep the signal through optimization
 -- so that timing constraints can be placed on the signal later.
 -- The timing constraints can be multi-cycle path and clock.
 attribute syn_keep : boolean; -- {noscope}
                
 attribute syn_sharing : string;        -- "off" or "on" {noscope}

 -- syn_evaleffort is used on modules to define the effort to be used in
 -- evaluating conditions for control structures.  This is useful for 
 -- those modules that contain while loop or if-then-else conditions 
 -- that may evaluate to a constant if more effort is applied.
 -- The higher this number, the higher the evaluation effort,
 -- and consequently the memory requirement and CPU time.  The default
 -- value is 4.
 attribute syn_evaleffort : integer;    -- an integer between 0 and 100 {noscope}

 attribute syn_isclock : boolean; -- {objtype input_port} {desc Input port on a black box is a clock}

 -- General mapping attributes

 -- inst/module/arch
  --{family *}
 attribute syn_noprune : boolean; -- keep object even if outputs unused {objtype module cell} {desc Retain instance when outputs are unused}

 -- registers
 attribute syn_useenables : boolean; -- set to false to disable enable use {objtype register} {desc Generate with clock enable pin}

 -- I/O registers
 -- {family $lucent}
 attribute syn_useioff : boolean; -- set to false to disable use of I/O FF {objtype port} {desc Embed flip-flps in the IO ring}

 -- used to specify implementations for dff in actel for now

 -- {family $actel}
 attribute syn_implement : string;      -- "dff", "dffr", "dffs", "dffrs" {noscope}
 attribute syn_radhardlevel : string;   -- "none", "cc", "tmr", "tmr_cc" {noscope}

 -- {family *}
 -- black box attributes
 attribute black_box : boolean;         -- disables automatic black box warning {noscope}
 attribute black_box_pad_pin : string;  -- names of I/O pad connections {noscope}
 attribute black_box_tri_pins : string; -- names of tristate ports {noscope}

 -- Black box timing attributes
 -- tpd : timing propagation delay
 -- tsu : timing setup delay
 -- tco : timing clock to output delay
 attribute syn_tpd1 : string; -- {noscope}
 attribute syn_tpd2 : string; -- {noscope}
 attribute syn_tpd3 : string; -- {noscope}
 attribute syn_tpd4 : string; -- {noscope}
 attribute syn_tpd5 : string; -- {noscope}
 attribute syn_tpd6 : string; -- {noscope}
 attribute syn_tpd7 : string; -- {noscope}
 attribute syn_tpd8 : string; -- {noscope}
 attribute syn_tpd9 : string; -- {noscope}
 attribute syn_tpd10 : string; -- {noscope}
 attribute syn_tsu1 : string; -- {noscope}
 attribute syn_tsu2 : string; -- {noscope}
 attribute syn_tsu3 : string; -- {noscope}
 attribute syn_tsu4 : string; -- {noscope}
 attribute syn_tsu5 : string; -- {noscope}
 attribute syn_tsu6 : string; -- {noscope}
 attribute syn_tsu7 : string; -- {noscope}
 attribute syn_tsu8 : string; -- {noscope}
 attribute syn_tsu9 : string; -- {noscope}
 attribute syn_tsu10 : string; -- {noscope}
 attribute syn_tco1 : string; -- {noscope}
 attribute syn_tco2 : string; -- {noscope}
 attribute syn_tco3 : string; -- {noscope}
 attribute syn_tco4 : string; -- {noscope}
 attribute syn_tco5 : string; -- {noscope}
 attribute syn_tco6 : string; -- {noscope}
 attribute syn_tco7 : string; -- {noscope}
 attribute syn_tco8 : string; -- {noscope}
 attribute syn_tco9 : string; -- {noscope}
 attribute syn_tco10 : string; -- {noscope}
 
 -- Timing constraint attributes for Synplify
 
 attribute syn_clock : time;                    -- {noscope}
 attribute syn_reg_input_delay_improve : time;  -- {noscope}
 attribute syn_reg_input_delay_route : time;    -- {noscope}
 attribute syn_reg_output_delay_improve : time; -- {noscope}
 attribute syn_reg_output_delay_route : time;   -- {noscope}
 attribute syn_input_delay : time;              -- {noscope}
 attribute syn_input_delay_improve : time;      -- {noscope}
 attribute syn_output_delay : time; -- {noscope}
 attribute syn_output_delay_improve : time;     -- {noscope}
 attribute syn_output_delay_route : time;       -- {noscope}
 attribute syn_multicycle_path : time;          -- {noscope}

 
 -- Mapping attributes

 -- {family $actel $xilinx $lucent $quicklogic $altera}

 attribute syn_maxfan : integer;     -- actel, xilinx, lucent, quicklogic {objtype input_port register_output cell} {desc Overrides the default fanout}

  -- {family *}
 attribute syn_noclockbuf : boolean; -- actel, xilinx {objtype clock} {desc Use normal input buffer}

 -- set syn_ramstyle to a value of "registers" to force the ram
 -- to be implemented with registers.
-- {family $altera $xilinx $lucent}
 attribute syn_ramstyle : string;    -- altera, xilinx {objtype register} {desc Map inferred RAM to registers} {default registers}

 -- controls EDIF format.  Set true on top level to disable array ports
  -- {family *}
 attribute syn_noarrayports : boolean; -- {objtype global} {desc Disable array ports}
 -- controls reconstruction of hierarchy.  Set false on top level
 -- to disable hierarchy reconstruction.
 attribute syn_netlist_hierarchy : boolean; -- {objtype global module} {desc Disable hierarchy reconstruction}

 --
 -- syn_hier on an instance/module/architecture can be used
 -- to control treatment of the level of hierarchy.
 -- "macro" - preserve instantiated netlist (lattice6k only)
 -- "remove"- removes level of hierarchy
 -- "soft"  - managed by Synplify (default)
 -- "firm"  - preserve during opt, but allow mapping across boundary
 --
  -- {family *}
 attribute syn_hier: string; -- {objtype module} {desc Control hierarchy flattening (soft,firm,remove,macro)}
 -- syn_flatten on a module/architecture will flatten out the
 -- module all the way down to primitives.
 attribute syn_flatten : boolean; -- {noscope}
 
 
 -- Architecture specific attributes
 -- Actel
  -- {family $actel}

 --
 -- syn_preserve_sr_priority is used if you want to preserve
 -- reset over set priority for DFFRS.  Actel FF models produce
 -- an X for set and reset active.  This attribute costs gates and delay.
 attribute syn_preserve_sr_priority : boolean; -- {noscope}
 attribute alspin : string ; --{objtype port} {desc Pin locations for Actel I/Os}

 -- Altera
 -- {family $altera}
 
 attribute altera_chip_pin_lc : string; -- placement {objtype port} {default @nn} {desc I/O pin location}
 -- inst/module/arch:  put comb logic into rom
 attribute altera_implement_in_eab : boolean; -- {objtype module} {desc Implment in Altera EABs} {default 1}
 attribute altera_area : integer; -- Number of lcells in black box {objtype module} {desc Number of LCELLs}
 
 -- Lattice

  -- {family $lattice}
 
 attribute lock: string; -- pin placement {objtype port} {desc Pin locations for Lattice I/Os}
 
 -- Lucent

  -- {family $lucent}
 
 attribute din : string; -- orca2 FF placement attribute, use value "" {objtype input_port} {desc Input register goes next to I/O pad}
 attribute dout : string; -- orca2 FF placement attribute, use value "" {objtype output_port} {desc Output register goes next to I/O pad}
 attribute loc : string;  -- placment attribute {objtype port} {desc Pin location}
 attribute orca_padtype : string; -- value selects synth pad type {objtype port} {desc Pad type for I/O}
 
 -- Quicklogic
  -- {family $quicklogic}
 
 -- I/O attributes
 attribute ql_padtype : string; -- {objtype port} {desc Override default pad types (use BIDIR, INPUT, CLOCK)}
 attribute ql_placement : string; -- {objtype port cell} {desc Placement location}
 
 
 -- Xilinx
 -- {family $xilinx}

 -- Instance Placement attributes
 attribute xc_loc : string; -- placement (pads) {objtype port} {desc Port placement}
 attribute xc_rloc : string; -- see RPMs in xilinx doc {objtype port}
 attribute xc_uset : string; -- see RPMs in xilinx doc {objtype port}
 -- I/O attributes
 attribute xc_fast : boolean; -- {objtype output_port} {desc Fast transition time}
 attribute xc_ioff : boolean; -- {objtype port} {desc Turn on/off use of internal flip-flops of the IOB}
 attribute xc_nodelay : boolean; -- {objtype input_port} {desc Remove input delay}
 attribute xc_slow : boolean; -- {objtype output_port} {desc Slow transition time}
 attribute xc_ttl : boolean; -- {objtype port} {desc Use TTL pad type}
 attribute xc_cmos : boolean; -- {objtype port} {desc Use CMOS pad type}
 attribute xc_pullup : boolean;   -- add a pullup to I/O {objtype port} {desc Add a pullup}
 attribute xc_pulldown : boolean; -- add a pulldown to I/O {objtype port} {desc Add a pulldown}
 attribute xc_clockbuftype : string; -- {objtype input_port} {default BUFGDLL} {desc Use the Xilinx BUFGDLL clock buffer}
 attribute xc_padtype : string; -- {objtype input_port} {desc Applies an I/O standard to an I/O buffer}
 
 -- Top level architecture attributes
 -- number of global buffers, used only for XC4000, XC4000E
 -- {famlly xc4000*}
 attribute xc_global_buffers : integer; -- {objtype global} {desc Number of global buffers}
 -- Black box attributes
 -- {family $xilinx}
 attribute xc_alias : string; -- cell name change in XNF writer {objtype cell} {desc Cell name change in XNF writer}
 attribute xc_props : string; -- extra XNF attributes to pass for instance {objtype cell} {desc Extra XNF attributes to pass for instance}
 attribute xc_map : string;   -- used to map entity to fmap/hmap/lut {objtype cell} {desc Map entity to fmap/hmap/lut}
 attribute xc_isgsr : boolean; -- used to mark port of core with built in GSR {objtype input_port} {desc Reset pin connected to an internal STARTUP block }
    
end attributes;
