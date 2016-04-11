-- VHDL Xilinx/xc4000 Import library.
-- Copyright 1995 Synplicity Inc.
library IEEE;
use IEEE.STD_LOGIC_1164.all;


package components is

attribute black_box: boolean;
attribute black_box_pad: boolean;
attribute black_box_pad_pin: string;
attribute black_box_tri_pins : string;
attribute \.globalbuf\  : boolean;
attribute xc_alias: string;
attribute xc_props: string;
attribute synthesis_noprune: boolean;

attribute black_box of components : package is true;

----- Component AND2 -----
component AND2

   port(
      O                              :	out   STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component AND3 -----
component AND3

   port(
      O                              :	out   STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component AND4 -----
component AND4

   port(
      O                              :	out   STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component AND5 -----
component AND5

   port(
      O                              :	out   STD_LOGIC;
      I4                             :	in    STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;

component TDI

   port(
      I				    : out STD_LOGIC);
end component;

component TCK

   port(
      I				    : out STD_LOGIC);
end component;

component TMS

   port(
      I				    : out STD_LOGIC);
end component;

component TDO

   port(
      O				    : in STD_LOGIC);
end component;
attribute synthesis_noprune of TDO: component is true;

--
-- Note: Port directions are compatable with an M1.5 patch
-- available from Xilinx.
--
component MD0
	port (I : in std_logic);
end component;
attribute black_box_pad_pin of MD0 : component is "I";
attribute synthesis_noprune of MD0: component is true;

component MD2
	port (I : in std_logic);
end component;
attribute black_box_pad_pin of MD2 : component is "I";
attribute synthesis_noprune of MD2: component is true;

component MD1
	port (O : in std_logic);
end component;
attribute black_box_pad_pin of MD1 : component is "O";
attribute synthesis_noprune of MD1: component is true;
  
----- Component BSCAN -----
component BSCAN

   port(
      TDO                            :	out   STD_LOGIC;
      DRCK                           :	out   STD_LOGIC;
      IDLE                           :	out   STD_LOGIC;
      SEL1                           :	out   STD_LOGIC;
      SEL2                           :	out   STD_LOGIC;
      TDI                            :	in    STD_LOGIC;
      TMS                            :	in    STD_LOGIC;
      TCK                            :	in    STD_LOGIC;
      TDO1                           :	in    STD_LOGIC;
      TDO2                           :	in    STD_LOGIC);
end component;


----- Component BUF -----
component BUF

   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;


----- Component BUFG -----
component BUFG
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;
----- Component BUFGLS -----
component BUFGLS
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;

component BUFG_F
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;


----- Component BUFGP -----
component BUFGP
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;

component BUFGP_F
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;


----- Component BUFGS -----
component BUFGS
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;

component BUFGS_F
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;


----- Component BUFT -----
component BUFT
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC);
end component;
attribute black_box_tri_pins of BUFT : component is "O";


----- Component CY4 -----
component CY4
   port(
      COUT                           :	out   STD_LOGIC;
      COUT0                          :	out   STD_LOGIC;
      CIN                            :	in    STD_LOGIC;
      A0                             :	in    STD_LOGIC;
      A1                             :	in    STD_LOGIC;
      B0                             :	in    STD_LOGIC;
      B1                             :	in    STD_LOGIC;
      ADD                            :	in    STD_LOGIC;
      C0                             :	in    STD_LOGIC;
      C1                             :	in    STD_LOGIC;
      C2                             :	in    STD_LOGIC;
      C3                             :	in    STD_LOGIC;
      C4                             :	in    STD_LOGIC;
      C5                             :	in    STD_LOGIC;
      C6                             :	in    STD_LOGIC;
      C7                             :	in    STD_LOGIC);
end component;


----- Component cy4_01 -----
component cy4_01
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_01 : component is true;


----- Component cy4_02 -----
component cy4_02
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_02 : component is true;


----- Component cy4_03 -----
component cy4_03
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_03 : component is true;


----- Component cy4_04 -----
component cy4_04
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '1';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_04 : component is true;


----- Component cy4_05 -----
component cy4_05
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_05 : component is true;


----- Component cy4_06 -----
component cy4_06
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_06 : component is true;


----- Component cy4_07 -----
component cy4_07
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_07 : component is true;


----- Component cy4_08 -----
component cy4_08
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_08 : component is true;


----- Component cy4_09 -----
component cy4_09
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '1';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_09 : component is true;


----- Component cy4_10 -----
component cy4_10
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_10 : component is true;


----- Component cy4_11 -----
component cy4_11
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_11 : component is true;


----- Component cy4_12 -----
component cy4_12
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_12 : component is true;



----- Component cy4_13 -----
component cy4_13
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_13 : component is true;


----- Component cy4_14 -----
component cy4_14
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_14 : component is true;


----- Component cy4_15 -----
component cy4_15
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '1';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_15 : component is true;


----- Component cy4_16 -----
component cy4_16
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_16 : component is true;


----- Component cy4_17 -----
component cy4_17
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_17 : component is true;


----- Component cy4_18 -----
component cy4_18
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_18 : component is true;


----- Component cy4_19 -----
component cy4_19
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_19 : component is true;


----- Component cy4_20 -----
component cy4_20
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_20 : component is true;


----- Component cy4_21 -----
component cy4_21
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_21 : component is true;


----- Component cy4_22 -----
component cy4_22
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '1';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_22 : component is true;


----- Component cy4_23 -----
component cy4_23
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '1';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_23 : component is true;


----- Component cy4_24 -----
component cy4_24
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_24 : component is true;


----- Component cy4_25 -----
component cy4_25
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_25 : component is true;


----- Component cy4_26 -----
component cy4_26
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_26 : component is true;


----- Component cy4_27 -----
component cy4_27
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_27 : component is true;


----- Component cy4_28 -----
component cy4_28
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_28 : component is true;


----- Component cy4_29 -----
component cy4_29
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '1';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_29 : component is true;


----- Component cy4_30 -----
component cy4_30
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_30 : component is true;


----- Component cy4_31 -----
component cy4_31
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_31 : component is true;


----- Component cy4_32 -----
component cy4_32
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '1';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_32 : component is true;


----- Component cy4_33 -----
component cy4_33
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_33 : component is true;


----- Component cy4_34 -----
component cy4_34
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_34 : component is true;


----- Component cy4_35 -----
component cy4_35
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_35 : component is true;


----- Component cy4_36 -----
component cy4_36
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '1';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '1';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '1');
end component;
attribute synthesis_noprune of cy4_36 : component is true;


----- Component cy4_37 -----
component cy4_37
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_37 : component is true;


----- Component cy4_38 -----
component cy4_38
   port(
      C7                             :	out   STD_LOGIC := '1';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_38 : component is true;


----- Component cy4_39 -----
component cy4_39
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '1';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_39 : component is true;


----- Component cy4_40 -----
component cy4_40
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '1';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_40 : component is true;


----- Component cy4_41 -----
component cy4_41
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '1';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '0';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_41 : component is true;


----- Component cy4_42 -----
component cy4_42
   port(
      C7                             :	out   STD_LOGIC := '0';
      C6                             :	out   STD_LOGIC := '0';
      C5                             :	out   STD_LOGIC := '0';
      C4                             :	out   STD_LOGIC := '0';
      C3                             :	out   STD_LOGIC := '0';
      C2                             :	out   STD_LOGIC := '1';
      C1                             :	out   STD_LOGIC := '0';
      C0                             :	out   STD_LOGIC := '0');
end component;
attribute synthesis_noprune of cy4_42 : component is true;


----- Component FDCE -----
component FDCE
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE                             :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC
      );
end component;

----- Component FDC -----
component FDC
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC
      );
end component;

----- Component FDPE -----
component FDPE
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE                             :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC
      );
end component;


----- Component FDP -----
component FDP
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC
      );
end component;

----- Component FMAP -----
component FMAP
   port(
      O				    : out  STD_LOGIC;
      I1,I2,I3,I4		    : in STD_LOGIC
      );
end component;

component FMAP_PUC
   port(
      O				    : out  STD_LOGIC;
      I1,I2,I3,I4		    : in STD_LOGIC
      );
end component;

component FMAP_PLC
   port(
      O				    : out  STD_LOGIC;
      I1,I2,I3,I4		    : in STD_LOGIC
      );
end component;

component FMAP_PUO
   port(
      O				    : out  STD_LOGIC;
      I1,I2,I3,I4		    : in STD_LOGIC
      );
end component;

component FMAP_PLO
   port(
      O				    : out  STD_LOGIC;
      I1,I2,I3,I4		    : in STD_LOGIC
      );
end component;

----  Component HMAP ----

component HMAP
   port(
       O			   : out STD_LOGIC;
       I1, I2, I3                  : in STD_LOGIC
       );
end component;

component HMAP_PUC
   port(
       O			   : out STD_LOGIC;
       I1, I2, I3                  : in STD_LOGIC
       );
end component;


----- Component IBUF -----
component IBUF
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;


component IBUF_U
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;

component IBUF_CMOS
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;

component IBUF_TTL
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;

----- Component IFD -----
component IFD
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component IFD_F
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component IFD_U
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

----- Component IFDI -----
component IFDI
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component IFDX
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE						     :  in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component IFDX_F
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE			     :  in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component IFDXI
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE			     			 :  in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component IFDXI_F
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE			    			 :  in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component IFDI_F
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component IFDI_U
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

----- Component ILDI_1 -----
component ILDI_1
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC
      );
end component;

component ILDI_1F
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC
      );
end component;

component ILDI_1U
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC
      );
end component;

----- Component ILD_1 -----
component ILD_1
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC
      );
end component;

component ILD_1F
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC
      );
end component;

component ILD_1U
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC
      );
end component;
-- for Spartan-XL and 4000X only
component ILFFX
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      GF                              :	in    STD_LOGIC;
      CE                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC
      );
end component;
-- for Spartan-XL and 4000X only
component ILFFXI
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      GF                              :	in    STD_LOGIC;
      CE                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC
      );
end component;

----- Component INV -----
component INV
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;


----- Component NAND2 -----
component NAND2
   port(
      O                              :	out   STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component NAND3 -----
component NAND3
   port(
      O                              :	out   STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component NAND4 -----
component NAND4
   port(
      O                              :	out   STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component NAND5 -----
component NAND5
   port(
      O                              :	out   STD_LOGIC;
      I4                             :	in    STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component NOR2 -----
component NOR2
   port(
      O                              :	out   STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component NOR3 -----
component NOR3
   port(
      O                              :	out   STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component NOR4 -----
component NOR4
   port(
      O                              :	out   STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component NOR5 -----
component NOR5
   port(
      O                              :	out   STD_LOGIC;
      I4                             :	in    STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component OBUF -----
component OBUF
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

component OBUF_F
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

component OBUF_S
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

component OBUF_U
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

component OBUF_MF
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

component OBUF_MS
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

component OBUF_CMOSCAP
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

component OBUF_TTLCAP
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

component OBUF_CMOSRES
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

component OBUF_TTLRES
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC
      );
end component;

----- Component OBUFT -----
component OBUFT
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OBUFT_F
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OBUFT_S
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OBUFT_U
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OBUFT_MF
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OBUFT_MS
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OBUFT_CMOSCAP
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OBUFT_CMOSRES
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OBUFT_TTLCAP
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OBUFT_TTLRES
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;


----- Component OFD -----
component OFD
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFDX
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE                              :	in    STD_LOGIC;
      D                             :  in    STD_LOGIC
      );
end component;

component OFDX_F
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE                              :	in    STD_LOGIC;
      D                             :  in    STD_LOGIC
      );
end component;

component OFDXI
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE                              :	in    STD_LOGIC;
      D                             :  in    STD_LOGIC
      );
end component;

component OFDXI_F
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE                              :	in    STD_LOGIC;
      D                             :  in    STD_LOGIC
      );
end component;

component OFD_F
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFD_FU
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFD_S
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFD_U
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFD_MF
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFD_MS
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

----- Component OFDI -----
component OFDI
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFDI_F
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFDI_S
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFDI_MF
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFDI_MS
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFDI_U
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

component OFDI_FU
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;

----- Component OFDT -----
component OFDT
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDT : component is "O";

component OFDT_F
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDT_F : component is "O";

component OFDT_S
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDT_S : component is "O";

component OFDT_MF
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDT_MF : component is "O";

component OFDT_MS
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDT_MS : component is "O";

component OFDT_U
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDT_U : component is "O";


----- Component OFDTI -----
component OFDTI
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDTI : component is "O";

component OFDTI_F
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDTI_F : component is "O";

component OFDTI_S
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDTI_S : component is "O";

component OFDTI_U
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDTI_U : component is "O";

component OFDTI_MF
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDTI_MF : component is "O";

component OFDTI_MS
   port(
      O                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;
attribute black_box_tri_pins of OFDTI_MS : component is "O";

----- Component OR2 -----
component OR2
   port(
      O                              :	out   STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component OR3 -----
component OR3
   port(
      O                              :	out   STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component OR4 -----
component OR4
   port(
      O                              :	out   STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component OR5 -----
component OR5
   port(
      O                              :	out   STD_LOGIC;
      I4                             :	in    STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;

----- Component OSC4 -----
component OSC4
   port(
	F8M, F500K, F16K, F490, F15 : out STD_LOGIC
       );
end component;
attribute synthesis_noprune of OSC4 : component is true;

----- Component PULLDOWN -----
component PULLDOWN
   port(
      O                              :	in   STD_LOGIC := 'L');
end component;
attribute synthesis_noprune of PULLDOWN : component is true;

component PULLDOWN1
   port(
      O                              :	in   STD_LOGIC := 'L');
end component;
attribute black_box of PULLDOWN1: component is false;


----- Component PULLUP -----
component PULLUP
   port(
      O                              :	in   STD_LOGIC := 'H');
end component;
attribute synthesis_noprune of PULLUP : component is true;

component PULLUP1
   port(
      O                              :	in   STD_LOGIC := 'H');
end component;
attribute black_box of PULLUP1: component is false;

----- Component RAM16X1 ----
component RAM16X1
   port(
      O				    : out STD_LOGIC;
      A0, A1, A2, A3, D, WE	    : in STD_LOGIC
     );
end component;

---- Component RAM32X1 ----
component RAM32X1
   port(
       O 			    : out STD_LOGIC;
       A0, A1, A2, A3, A4, D, WE    : in STD_LOGIC
       );
end component;

----- Component RAM16X1D ----
component RAM16X1D
   port(
      DPO,SPO			: out STD_LOGIC;
      DPRA3,DPRA2,DPRA1,DPRA0	: in STD_LOGIC;
      A0, A1, A2, A3, D, WE , WCLK    : in STD_LOGIC
     );
end component;

----- Component RDBK -----
component RDBK
   port(
      DATA                           :	out   STD_LOGIC;
      RIP                            :	out   STD_LOGIC;
      TRIG                           :	in    STD_LOGIC);
end component;

component READBACK
   port(
      DATA                           :	out   STD_LOGIC;
      RIP                            :	out   STD_LOGIC;
      CLK 			     :  in    STD_LOGIC;
      TRIG                           :	in    STD_LOGIC);
end component;

component RDCLK
   port(
       I			    : in STD_LOGIC
       );
end component;
attribute synthesis_noprune of RDCLK : component is true;

----- Component ROM16X1 ----
component ROM16X1
   port(
      O				    : out STD_LOGIC;
      A0, A1, A2, A3     	    : in STD_LOGIC
     );
end component;

---- Component ROM32X1 ----
component ROM32X1
   port(
       O 			    : out STD_LOGIC;
       A0, A1, A2, A3, A4	    : in STD_LOGIC
       );
end component;

component STARTUP
   port(Q2, Q3, Q1Q4, DONEIN : out std_logic;
        GSR, GTS, CLK: in std_logic);
end component;

component STARTUP_GTS
   port(GTS: in std_logic);
end component;
attribute synthesis_noprune of STARTUP_GTS: component is true;
attribute xc_alias of STARTUP_GTS : component is "STARTUP";

component STARTUP_GSR
   port(GSR: in std_logic);
end component;
attribute synthesis_noprune of STARTUP_GSR: component is true;
attribute xc_alias of STARTUP_GSR : component is "STARTUP";

component STARTUP_CLK
   port(Q2,Q3,Q1Q4,DONEIN: out std_logic;
        CLK: in std_logic);
end component;
attribute synthesis_noprune of STARTUP_CLK: component is true;
attribute xc_alias of STARTUP_CLK: component is "STARTUP";

component STARTUP_ALL
   port(Q2,Q3,Q1Q4,DONEIN: out std_logic;
        GSR,GTS,CLK: in std_logic);
end component;
attribute synthesis_noprune of STARTUP_ALL: component is true;
attribute xc_alias of STARTUP_ALL: component is "STARTUP";
----- Component WAND1 -----
component WAND1
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;
attribute black_box_tri_pins of WAND1 : component is "O";


----- Component WOR2AND -----
component WOR2AND
   port(
      O                              :	out   STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;

----- Component XGND -----
component XGND
   port(
       GROUND			    : out STD_LOGIC
       );
end component;
attribute synthesis_noprune of XGND : component is true;

----- Component XNOR2 -----
component XNOR2
   port(
      O                              :	out   STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component XNOR3 -----
component XNOR3
   port(
      O                              :	out   STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component XNOR4 -----
component XNOR4
   port(
      O                              :	out   STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component XNOR5 -----
component XNOR5
   port(
      O                              :	out   STD_LOGIC;
      I4                             :	in    STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component XOR2 -----
component XOR2
   port(
      O                              :	out   STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component XOR3 -----
component XOR3
   port(
      O                              :	out   STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component XOR4 -----
component XOR4
   port(
      O                              :	out   STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;


----- Component XOR5 -----
component XOR5
   port(
      O                              :	out   STD_LOGIC;
      I4                             :	in    STD_LOGIC;
      I3                             :	in    STD_LOGIC;
      I2                             :	in    STD_LOGIC;
      I1                             :	in    STD_LOGIC;
      I0                             :	in    STD_LOGIC);
end component;

----- Component XVCC -----
component XVCC
   port(
       POWER 			     : out STD_LOGIC
      );
end component;
attribute synthesis_noprune of XVCC : component is true;

----- Component DECODE1_IO ----
component DECODE1_IO 
 port (O :  buffer std_logic;
       I : in std_logic);
end component;
attribute black_box of DECODE1_IO: component is false;

component DECODE1_INT 
 port (O :  buffer std_logic;
       I : in std_logic);
end component;
attribute black_box of DECODE1_INT: component is false;

component DECODE4
 port (O :  buffer std_logic;
       A : in std_logic_vector(3 downto 0));
end component;
attribute black_box of DECODE4: component is false;

component DECODE8
 port (O :  buffer std_logic;
       A : in std_logic_vector(7 downto 0));
end component;
attribute black_box of DECODE8: component is false;

component DECODE16 
port (O :  buffer std_logic;
      A : in std_logic_vector(15 downto 0));
end component;
attribute black_box of DECODE16: component is false;

component IOBUF 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_N_F 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_N_S 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_N_MF 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_N_MS 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_CMOS_CMOSCAP 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_CMOS_CMOSRES 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_TTL_CMOSCAP 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_TTL_CMOSRES 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_TTL_TTLCAP 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component IOBUF_TTL_TTLRES 
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end component;

component FDP_1
 port ( Q : out std_logic;
        C,D,PRE : in std_logic);
end component;

component FDPE_1
 port (Q : out std_logic;
       C, CE, D, PRE : in std_logic);
end component;

component IFD_1
 port (Q: out std_logic;
       C, D: in std_logic);
end component;
attribute black_box_pad_pin of IFD_1: component is "D";

component IFDX_1
 port (Q: out std_logic;
       C, CE, D: in std_logic);
end component;
attribute black_box_pad_pin of IFDX_1: component is "D";

component IFDXI_1
 port (Q: out std_logic;
       C, CE, D: in std_logic);
end component;
attribute black_box_pad_pin of IFDXI_1: component is "D";

component ILD
 port (Q: out std_logic;
       D, G: in std_logic);
end component;
attribute black_box_pad_pin of ILD : component is "D";

component ILDI
 port (Q: out std_logic;
       D, G: in std_logic);
end component;
attribute black_box_pad_pin of ILDI : component is "D";

component ILDX
 port (Q: out std_logic;
       D, G, GE: in std_logic);
end component;
attribute black_box_pad_pin of ILDX : component is "D";

component ILDX_1
 port (Q: out std_logic;
       D, G, GE: in std_logic);
end component;
attribute black_box_pad_pin of ILDX_1 : component is "D";

component ILDXI
 port (Q: out std_logic;
       D, G, GE: in std_logic);
end component;
attribute black_box_pad_pin of ILDXI : component is "D";

component ILDXI_1
 port (Q: out std_logic;
       D, G, GE: in std_logic);
end component;
attribute black_box_pad_pin of ILDXI_1 : component is "D";

component OFD_1
 port (Q: out std_logic;
       C, D: in std_logic);
end component;
attribute black_box_pad_pin of OFD_1 : component is "Q";

component OFDT_1
 port (O: out std_logic;
       C, D, T: in std_logic);
end component;
attribute black_box_tri_pins of OFDT_1 : component is "O";
attribute black_box_pad_pin of OFDT_1 : component is "O";

component OFDTX
 port (O : out std_logic;
       C, CE, D, T: in std_logic);
end component;
attribute black_box_tri_pins of OFDTX : component is "O";
attribute black_box_pad_pin of OFDTX : component is "O";

component OFDTX_1
 port (O: out std_logic;
       C, CE, D, T: in std_logic);
end component;
attribute black_box_tri_pins of OFDTX_1 : component is "O";
attribute black_box_pad_pin of OFDTX_1 : component is "O";

component OFDTX_F
 port (O : out std_logic;
       C, CE, D, T: in std_logic);
end component;
attribute black_box_tri_pins of OFDTX_F : component is "O";
attribute black_box_pad_pin of OFDTX_F : component is "O";

component OFDTXI
 port (O: out std_logic;
       C, CE, D, T: in std_logic);
end component;
attribute black_box_tri_pins of OFDTXI : component is  "O";
attribute black_box_pad_pin of OFDTXI : component is "O";

component OFDTXI_1
 port (O: out std_logic;
       C, CE, D, T: in std_logic);
end component;
attribute black_box_tri_pins of OFDTXI_1 : component is  "O";
attribute black_box_pad_pin of OFDTXI_1 : component is "O";

component OFDTXI_F
 port (O: out std_logic;
       C, CE, D, T: in std_logic);
end component;
attribute black_box_tri_pins of OFDTXI_F : component is  "O";
attribute black_box_pad_pin of OFDTXI_F : component is "O";

component OFDX_1
 port (Q: out std_logic;
       C, CE, D: in std_logic);
end component;
attribute black_box_pad_pin of OFDX_1 : component is "Q";

component OFDXI_1
 port (Q: out std_logic;
       C, CE, D: in std_logic);
end component;
attribute black_box_pad_pin of OFDXI_1 : component is "Q";

component RAM16X1S
 port (O: out std_logic;
       A3, A2, A1, A0, D, WE, WCLK : in std_logic);
end component;

component RAM32x1S
 PORT (O: out std_logic;
       A4, A3, A2, A1, A0, D, WE, WCLK: in std_logic);
end component;
       
attribute black_box of others  : component is true;
attribute black_box_pad_pin of TCK: component is "I";
attribute black_box_pad_pin of TDI: component is "I";
attribute black_box_pad_pin of TMS: component is "I";
attribute black_box_pad_pin of TDO: component is "O";
attribute black_box_pad_pin of IOBUF: component is "IO";
attribute black_box_pad_pin of IOBUF_N_F: component is "IO";
attribute black_box_pad_pin of IOBUF_N_S: component is "IO";
attribute black_box_pad_pin of IOBUF_N_MF: component is "IO";
attribute black_box_pad_pin of IOBUF_N_MS: component is "IO";
attribute black_box_pad_pin of IOBUF_CMOS_CMOSCAP: component is "IO";
attribute black_box_pad_pin of IOBUF_CMOS_CMOSRES: component is "IO";
attribute black_box_pad_pin of IOBUF_TTL_CMOSCAP: component is "IO";
attribute black_box_pad_pin of IOBUF_TTL_CMOSRES: component is "IO";
attribute black_box_pad_pin of IOBUF_TTL_TTLCAP: component is "IO";
attribute black_box_pad_pin of IOBUF_TTL_TTLRES: component is "IO";
attribute black_box_pad_pin of IBUF : component is "I";
attribute black_box_pad_pin of IBUF_U : component is "I";
attribute black_box_pad_pin of IBUF_CMOS : component is "I";
attribute black_box_pad_pin of IBUF_TTL : component is "I";
attribute black_box_pad_pin of IFD : component is "D";
attribute black_box_pad_pin of IFD_F : component is "D";
attribute black_box_pad_pin of IFDX : component is "D";
attribute black_box_pad_pin of IFDX_F : component is "D";
attribute black_box_pad_pin of IFD_U : component is "D";
attribute black_box_pad_pin of IFDI : component is "D";
attribute black_box_pad_pin of IFDI_F : component is "D";
attribute black_box_pad_pin of IFDI_U : component is "D";
attribute black_box_pad_pin of IFDXI : component is "D";
attribute black_box_pad_pin of IFDXI_F : component is "D";
attribute black_box_pad_pin of ILD_1 : component is "D";
attribute black_box_pad_pin of ILD_1F : component is "D";
attribute black_box_pad_pin of ILD_1U : component is "D";
attribute black_box_pad_pin of ILDI_1 : component is "D";
attribute black_box_pad_pin of ILDI_1F : component is "D";
attribute black_box_pad_pin of ILDI_1U : component is "D";
attribute black_box_pad_pin of OBUF : component is "O";
attribute black_box_pad_pin of OBUF_F : component is "O";
attribute black_box_pad_pin of OBUF_S : component is "O";
attribute black_box_pad_pin of OBUF_U : component is "O";
attribute black_box_pad_pin of OBUF_MF : component is "O";
attribute black_box_pad_pin of OBUF_MS : component is "O";
attribute black_box_pad_pin of OBUF_CMOSCAP : component is "O";
attribute black_box_pad_pin of OBUF_CMOSRES : component is "O";
attribute black_box_pad_pin of OBUF_TTLCAP : component is "O";
attribute black_box_pad_pin of OBUF_TTLRES : component is "O";
attribute black_box_pad_pin of OBUFT : component is "O";
attribute black_box_pad_pin of OBUFT_F : component is "O";
attribute black_box_pad_pin of OBUFT_S : component is "O";
attribute black_box_pad_pin of OBUFT_U : component is "O";
attribute black_box_pad_pin of OBUFT_MF : component is "O";
attribute black_box_pad_pin of OBUFT_MS : component is "O";
attribute black_box_pad_pin of OBUFT_CMOSCAP : component is "O";
attribute black_box_pad_pin of OBUFT_CMOSRES : component is "O";
attribute black_box_pad_pin of OBUFT_TTLCAP : component is "O";
attribute black_box_pad_pin of OBUFT_TTLRES : component is "O";

attribute black_box_tri_pins of OBUFT : component is "O";
attribute black_box_tri_pins of OBUFT_F : component is "O";
attribute black_box_tri_pins of OBUFT_S : component is "O";
attribute black_box_tri_pins of OBUFT_U : component is "O";
attribute black_box_tri_pins of OBUFT_MF : component is "O";
attribute black_box_tri_pins of OBUFT_MS : component is "O";
attribute black_box_tri_pins of OBUFT_CMOSCAP : component is "O";
attribute black_box_tri_pins of OBUFT_CMOSRES : component is "O";
attribute black_box_tri_pins of OBUFT_TTLCAP : component is "O";
attribute black_box_tri_pins of OBUFT_TTLRES : component is "O";

attribute black_box_pad_pin of OFD : component is "Q";
attribute black_box_pad_pin of OFDX : component is "Q";
attribute black_box_pad_pin of OFDXI : component is "Q";
attribute black_box_pad_pin of OFDXI_F : component is "Q";
attribute black_box_pad_pin of OFDX_F : component is "Q";
attribute black_box_pad_pin of OFD_F : component is "Q";
attribute black_box_pad_pin of OFD_FU : component is "Q";
attribute black_box_pad_pin of OFD_S : component is "Q";
attribute black_box_pad_pin of OFD_U : component is "Q";
attribute black_box_pad_pin of OFD_MF : component is "Q";
attribute black_box_pad_pin of OFD_MS : component is "Q";
attribute black_box_pad_pin of OFDI : component is "Q";
attribute black_box_pad_pin of OFDI_F : component is "Q";
attribute black_box_pad_pin of OFDI_FU : component is "Q";
attribute black_box_pad_pin of OFDI_S : component is "Q";
attribute black_box_pad_pin of OFDI_U : component is "Q";
attribute black_box_pad_pin of OFDI_MF : component is "Q";
attribute black_box_pad_pin of OFDI_MS : component is "Q";
attribute black_box_pad_pin of OFDT : component is "O";
attribute black_box_pad_pin of OFDT_F : component is "O";
attribute black_box_pad_pin of OFDT_S : component is "O";
attribute black_box_pad_pin of OFDT_MF : component is "O";
attribute black_box_pad_pin of OFDT_MS : component is "O";
attribute black_box_pad_pin of OFDT_U : component is "O";
attribute black_box_pad_pin of OFDTI : component is "O";
attribute black_box_pad_pin of OFDTI_F : component is "O";
attribute black_box_pad_pin of OFDTI_S : component is "O";
attribute black_box_pad_pin of OFDTI_MF : component is "O";
attribute black_box_pad_pin of OFDTI_MS : component is "O";
attribute black_box_pad_pin of OFDTI_U : component is "O";

attribute xc_alias of AND2 : component is "AND";
attribute xc_alias of AND3 : component is "AND";
attribute xc_alias of AND4 : component is "AND";
attribute xc_alias of AND5 : component is "AND";
attribute xc_alias of BUFT : component is "TBUF";
attribute xc_alias of FMAP_PUC : component is "FMAP";
attribute xc_props of FMAP_PUC : component is "MAP=PUC";
attribute xc_alias of FMAP_PLC : component is "FMAP";
attribute xc_props of FMAP_PLC : component is "MAP=PLC";
attribute xc_alias of FMAP_PUO : component is "FMAP";
attribute xc_props of FMAP_PUO : component is "MAP=PUO";
attribute xc_alias of FMAP_PLO : component is "FMAP";
attribute xc_props of FMAP_PLO : component is "MAP=PLO";
attribute xc_alias of HMAP_PUC : component is "HMAP";
attribute xc_props of HMAP_PUC : component is "MAP=PUC";
attribute xc_alias of IBUF_U : component is "IBUF";
attribute xc_props of IBUF_U : component is "UNBONDED";
attribute xc_alias of IBUF_CMOS : component is "IBUF";
attribute xc_props of IBUF_CMOS : component is "CMOS";
attribute xc_alias of IBUF_TTL : component is "IBUF";
attribute xc_props of IBUF_TTL : component is "TTL";
attribute xc_alias of NAND2 : component is "NAND";
attribute xc_alias of NAND3 : component is "NAND";
attribute xc_alias of NAND4 : component is "NAND";
attribute xc_alias of NAND5 : component is "NAND";
attribute xc_alias of NOR2 : component is "NOR";
attribute xc_alias of NOR3 : component is "NOR";
attribute xc_alias of NOR4 : component is "NOR";
attribute xc_alias of NOR5 : component is "NOR";
attribute xc_alias of OBUF_F : component is "OBUF";
attribute xc_props of OBUF_F : component is "FAST";
attribute xc_alias of OBUF_S : component is "OBUF";
attribute xc_props of OBUF_S : component is "SLOW";
attribute xc_alias of OBUF_U : component is "OBUF";
attribute xc_props of OBUF_U : component is "UNBONDED";
attribute xc_alias of OBUF_MF : component is "OBUF";
attribute xc_props of OBUF_MF : component is "MEDFAST";
attribute xc_alias of OBUF_MS : component is "OBUF";
attribute xc_props of OBUF_MS : component is "MEDSLOW";
attribute xc_alias of OBUF_CMOSCAP : component is "OBUF";
attribute xc_props of OBUF_CMOSCAP : component is "CMOS, CAP";
attribute xc_alias of OBUF_CMOSRES : component is "OBUF";
attribute xc_props of OBUF_CMOSRES : component is "CMOS, RES";
attribute xc_alias of OBUF_TTLCAP : component is "OBUF";
attribute xc_props of OBUF_TTLCAP : component is "TTL, CAP";
attribute xc_alias of OBUF_TTLRES : component is "OBUF";
attribute xc_props of OBUF_TTLRES : component is "TTL, RES";
attribute xc_alias of OBUFT_F : component is "OBUFT";
attribute xc_props of OBUFT_F : component is "FAST";
attribute xc_alias of OBUFT_S : component is "OBUFT";
attribute xc_props of OBUFT_S : component is "SLOW";
attribute xc_alias of OBUFT_U : component is "OBUFT";
attribute xc_props of OBUFT_U : component is "UNBONDED";
attribute xc_alias of OBUFT_MF : component is "OBUFT";
attribute xc_props of OBUFT_MF : component is "MEDFAST";
attribute xc_alias of OBUFT_MS : component is "OBUFT";
attribute xc_props of OBUFT_MS : component is "MEDSLOW";
attribute xc_alias of OBUFT_CMOSCAP : component is "OBUFT";
attribute xc_props of OBUFT_CMOSCAP : component is "CMOS, CAP";
attribute xc_alias of OBUFT_CMOSRES : component is "OBUFT";
attribute xc_props of OBUFT_CMOSRES : component is "CMOS, RES";
attribute xc_alias of OBUFT_TTLCAP : component is "OBUFT";
attribute xc_props of OBUFT_TTLCAP : component is "TTL, CAP";
attribute xc_alias of OBUFT_TTLRES : component is "OBUFT";
attribute xc_props of OBUFT_TTLRES : component is "TTL, RES";
attribute xc_alias of OR2 : component is "OR";
attribute xc_alias of OR3 : component is "OR";
attribute xc_alias of OR4 : component is "OR";
attribute xc_alias of OR5 : component is "OR";
attribute xc_alias of WAND1 : component is "WAND";
attribute xc_alias of WOR2AND : component is "WORAND";
attribute xc_alias of XGND : component is "GND";
attribute xc_alias of XNOR2 : component is "XNOR";
attribute xc_alias of XNOR3 : component is "XNOR";
attribute xc_alias of XNOR4 : component is "XNOR";
attribute xc_alias of XNOR5 : component is "XNOR";
attribute xc_alias of XOR2 : component is "XOR";
attribute xc_alias of XOR3 : component is "XOR";
attribute xc_alias of XOR4 : component is "XOR";
attribute xc_alias of XOR5 : component is "XOR";
attribute xc_alias of XVCC : component is "VCC";

end components;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity DECODE1_IO is
 port (O :  buffer std_logic;
       I : in std_logic);
end DECODE1_IO;
architecture arch1 of DECODE1_IO is
 attribute xc_props: STRING;
 attribute xc_props of inst1 : label is "DECODE";
begin
	inst1: WAND1 port map (O, I);
end arch1; 
 
library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity DECODE1_INT is 
port (O :  buffer std_logic; 
      I : in std_logic);
end DECODE1_INT;
architecture arch1 of DECODE1_INT is
 attribute xc_props: STRING;
 attribute xc_props of inst1 : label is "DECODE";
begin
	inst1: WAND1 port map (O, I);
end arch1; 

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity DECODE4 is
 port (O : buffer std_logic;
       A : in std_logic_vector(3 downto 0));
end DECODE4;
architecture arch1 of DECODE4 is
 attribute xc_props: STRING;
 attribute xc_props of inst0 : label is "DECODE";
 attribute xc_props of inst1 : label is "DECODE";
 attribute xc_props of inst2 : label is "DECODE";
 attribute xc_props of inst3 : label is "DECODE";

begin
	inst0: WAND1 port map (O, A(0));
	inst1: WAND1 port map (O, A(1));
	inst2: WAND1 port map (O, A(2));
	inst3: WAND1 port map (O, A(3));
end arch1; 

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity DECODE8 is
 port (O : buffer std_logic;
       A : in std_logic_vector(7 downto 0));
end DECODE8;
architecture arch1 of DECODE8 is
 attribute xc_props: STRING;
 attribute xc_props of inst0 : label is "DECODE";
 attribute xc_props of inst1 : label is "DECODE";
 attribute xc_props of inst2 : label is "DECODE";
 attribute xc_props of inst3 : label is "DECODE";
 attribute xc_props of inst4 : label is "DECODE";
 attribute xc_props of inst5 : label is "DECODE";
 attribute xc_props of inst6 : label is "DECODE";
 attribute xc_props of inst7 : label is "DECODE";

begin
	inst0: WAND1 port map (O, A(0));
	inst1: WAND1 port map (O, A(1));
	inst2: WAND1 port map (O, A(2));
	inst3: WAND1 port map (O, A(3));
	inst4: WAND1 port map (O, A(4));
	inst5: WAND1 port map (O, A(5));
	inst6: WAND1 port map (O, A(6));
	inst7: WAND1 port map (O, A(7));
end arch1; 

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity DECODE16 is
 port (O : buffer std_logic;
       A : in std_logic_vector(15 downto 0));
end DECODE16;
architecture arch1 of DECODE16 is
 attribute xc_props: STRING;
 attribute xc_props of inst0 : label is "DECODE";
 attribute xc_props of inst1 : label is "DECODE";
 attribute xc_props of inst2 : label is "DECODE";
 attribute xc_props of inst3 : label is "DECODE";
 attribute xc_props of inst4 : label is "DECODE";
 attribute xc_props of inst5 : label is "DECODE";
 attribute xc_props of inst6 : label is "DECODE";
 attribute xc_props of inst7 : label is "DECODE";
 attribute xc_props of inst8 : label is "DECODE";
 attribute xc_props of inst9 : label is "DECODE";
 attribute xc_props of inst10 : label is "DECODE";
 attribute xc_props of inst11 : label is "DECODE";
 attribute xc_props of inst12 : label is "DECODE";
 attribute xc_props of inst13 : label is "DECODE";
 attribute xc_props of inst14 : label is "DECODE";
 attribute xc_props of inst15 : label is "DECODE";
begin
	inst0: WAND1 port map (O, A(0));
	inst1: WAND1 port map (O, A(1));
	inst2: WAND1 port map (O, A(2));
	inst3: WAND1 port map (O, A(3));
	inst4: WAND1 port map (O, A(4));
	inst5: WAND1 port map (O, A(5));
	inst6: WAND1 port map (O, A(6));
	inst7: WAND1 port map (O, A(7));
	inst8: WAND1 port map (O, A(8));
	inst9: WAND1 port map (O, A(9));
	inst10: WAND1 port map (O, A(10));
	inst11: WAND1 port map (O, A(11));
	inst12: WAND1 port map (O, A(12));
	inst13: WAND1 port map (O, A(13));
	inst14: WAND1 port map (O, A(14));
	inst15: WAND1 port map (O, A(15));
end arch1; 

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF;
architecture arch1 of IOBUF is
begin
	inst0: OBUFT_S port map (IO, I, T);
        inst1: IBUF port map (O, IO);
end arch1;


library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_N_F is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_N_F;
architecture arch1 of IOBUF_N_F is
begin
	inst0: OBUFT_F port map (IO, I, T);
        inst1: IBUF port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_N_S is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_N_S;
architecture arch1 of IOBUF_N_S is
begin
	inst0: OBUFT_S port map (IO, I, T);
        inst1: IBUF port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_N_MF is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_N_MF;
architecture arch1 of IOBUF_N_MF is
begin
	inst0: OBUFT_MF port map (IO, I, T);
        inst1: IBUF port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_N_MS is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_N_MS;
architecture arch1 of IOBUF_N_MS is
begin
	inst0: OBUFT_MS port map (IO, I, T);
        inst1: IBUF port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_CMOS_CMOSCAP is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_CMOS_CMOSCAP;
architecture arch1 of IOBUF_CMOS_CMOSCAP is
begin
	inst0: OBUFT_CMOSCAP port map (IO, I, T);
        inst1: IBUF_CMOS port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_CMOS_CMOSRES is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_CMOS_CMOSRES;
architecture arch1 of IOBUF_CMOS_CMOSRES is
begin
	inst0: OBUFT_CMOSRES port map (IO, I, T);
        inst1: IBUF_CMOS port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_TTL_CMOSCAP is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_TTL_CMOSCAP;
architecture arch1 of IOBUF_TTL_CMOSCAP is
begin
	inst0: OBUFT_CMOSCAP port map (IO, I, T);
        inst1: IBUF_TTL port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_TTL_CMOSRES is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_TTL_CMOSRES;
architecture arch1 of IOBUF_TTL_CMOSRES is
begin
	inst0: OBUFT_CMOSRES port map (IO, I, T);
        inst1: IBUF_TTL port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_TTL_TTLCAP is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_TTL_TTLCAP;
architecture arch1 of IOBUF_TTL_TTLCAP is
begin
	inst0: OBUFT_TTLCAP port map (IO, I, T);
        inst1: IBUF_TTL port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity BUFT is
 port (O: out std_logic;
       I,T: in std_logic
);
end BUFT;
architecture arch1 of BUFT is
begin
  O <= I when T = '0' else
	'Z';
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IOBUF_TTL_TTLRES is
 port ( O : out std_logic;
       IO : inout std_logic;
       I,T : in std_logic
 );
end IOBUF_TTL_TTLRES;
architecture arch1 of IOBUF_TTL_TTLRES is
begin
	inst0: OBUFT_TTLRES port map (IO, I, T);
        inst1: IBUF_TTL port map (O, IO);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity PULLUP1 is
  port (O : in std_logic);
end PULLUP1;

architecture struct of PULLUP1 is
attribute synthesis_noprune : boolean;
attribute synthesis_noprune of struct : architecture is true;
begin
   p: PULLUP port map (O => O);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity PULLDOWN1 is
  port (O : in std_logic);
end PULLDOWN1;

architecture struct of PULLDOWN1 is
attribute synthesis_noprune : boolean;
attribute synthesis_noprune of struct : architecture is true;
begin
   p: PULLDOWN port map (O => O);
end struct;

-- Map BUFG_F to BUFG
library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity BUFG_F is
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end BUFG_F;

architecture struct of BUFG_F is
attribute xc_props : string;
attribute xc_props of b : label is "FAST";
begin
   b: BUFG port map (O => O, I => I);
end struct;

-- Map BUFGP_F to BUFG
library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity BUFGP_F is
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end BUFGP_F;

architecture struct of BUFGP_F is
attribute xc_props : string;
attribute xc_props of b : label is "FAST";
begin
   b: BUFGP port map (O => O, I => I);
end struct;

-- Map BUFGS_F to BUFG
library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity BUFGS_F is
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end BUFGS_F;

architecture struct of BUFGS_F is
attribute xc_props : string;
attribute xc_props of b : label is "FAST";
begin
   b: BUFGS port map (O => O, I => I);
end struct;

-- Define STARTUP in terms of STARTUP_GSR/GTS/CLK
library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity STARTUP is
   port(Q2, Q3, Q1Q4, DONEIN : out std_logic;
        GSR, GTS, CLK: in std_logic := '0');
end STARTUP;

architecture struct of STARTUP is
attribute synthesis_noprune of struct : architecture is true;
begin
  gsr : STARTUP_GSR port map ( GSR => GSR );
  gts : STARTUP_GTS port map ( GTS => GTS );
  clk : STARTUP_CLK port map ( Q2 => Q2, Q3 => Q3, Q1Q4 => Q1Q4, DONEIN => DONEIN, CLK => CLK);
end struct;

-- Define READBACK in terms of RDBK and RDCLK
library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity READBACK is
   port(
      DATA                           :	out   STD_LOGIC;
      RIP                            :	out   STD_LOGIC;
      CLK 			     :  in    STD_LOGIC;
      TRIG                           :	in    STD_LOGIC);
end READBACK;
architecture struct of READBACK is
begin
  r1 : RDBK port map (DATA => DATA, RIP => RIP, TRIG => TRIG);
  r2 : RDCLK port map (I => CLK);
end struct;

-- Define all Unisim macros in terms of Unisim library primitives
library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity FDC is
  port(Q : out std_logic;
       C, CLR, D : in std_logic
	   );
end FDC;
architecture struct of FDC is
begin
  f1 : FDCE port map(Q => Q, C => C, CE => '1', CLR => CLR, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity FDP is
  port(Q : out std_logic;
       C, PRE, D : in std_logic
	   );
end FDP;
architecture struct of FDP is
begin
  f1 : FDPE port map(Q => Q, C => C, CE => '1', PRE => PRE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity FDP_1 is
  port(Q : out std_logic;
       C, PRE, D : in std_logic
	   );
end FDP_1;
architecture struct of FDP_1 is
begin
  f1 : FDPE port map(Q => Q, C => (not C), CE => '1', PRE => PRE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity FDPE_1 is
  port(Q : out std_logic;
       C, CE, PRE, D : in std_logic
	   );
end FDPE_1;
architecture struct of FDPE_1 is
begin
  f1 : FDPE port map(Q => Q, C => (not C), CE => CE, PRE => PRE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFD is
  port( Q : out std_logic;
        C, D : in std_logic
	   );
end IFD;
architecture struct of IFD is
begin
  if1 : IFDX port map ( Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFD_F is
  port( Q : out std_logic;
        C, D : in std_logic
	   );
end IFD_F;
architecture struct of IFD_F is
attribute xc_props : string;
attribute xc_props of if1 : label is "FAST";
begin
  if1 : IFDX port map ( Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFD_U is
  port( Q : out std_logic;
        C, D : in std_logic
	   );
end IFD_U;
architecture struct of IFD_U is
attribute xc_props : string;
attribute xc_props of if1 : label is "UNBONDED";
begin
  if1 : IFDX port map ( Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFD_1 is
  port( Q : out std_logic;
        C, D : in std_logic
	   );
end IFD_1;
architecture struct of IFD_1 is
begin
  if1 : IFDX port map ( Q => Q, C => (not C), CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFDX_F is
  port( Q : out std_logic;
        C, CE, D : in std_logic
	   );
end IFDX_F;
architecture struct of IFDX_F is
attribute xc_props : string;
attribute xc_props of if1 : label is "FAST";
begin
  if1 : IFDX port map ( Q => Q, C => C, CE => CE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFDX_1 is
  port( Q : out std_logic;
        C, CE, D : in std_logic
	   );
end IFDX_1;
architecture struct of IFDX_1 is
begin
  if1 : IFDX port map ( Q => Q, C => (not C), CE => CE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFDI is
  port ( Q : out std_logic;
         C, D : in std_logic
	   );
end IFDI;

architecture struct of IFDI is
begin
  ifi1 : IFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFDI_F is
  port ( Q : out std_logic;
         C, D : in std_logic
	   );
end IFDI_F;
architecture struct of IFDI_F is
attribute xc_props : string;
attribute xc_props of ifi1 : label is "FAST";
begin
  ifi1 : IFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFDI_U is
  port ( Q : out std_logic;
         C, D : in std_logic
	   );
end IFDI_U;
architecture struct of IFDI_U is
attribute xc_props : string;
attribute xc_props of ifi1 : label is "UNBONDED";
begin
  ifi1 : IFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFDXI_1 is
  port ( Q : out std_logic;
         C, CE, D : in std_logic
	   );
end IFDXI_1;
architecture struct of IFDXI_1 is
begin
  ifi1 : IFDXI port map (Q => Q, C => (not C), CE => CE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity IFDXI_F is
  port ( Q : out std_logic;
         C, CE, D : in std_logic
	   );
end IFDXI_F;
architecture struct of IFDXI_F is
attribute xc_props : string;
attribute xc_props of ifi1 : label is "FAST";
begin
  ifi1 : IFDXI port map (Q => Q, C => C, CE => CE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILD_1 is
  port( Q : out std_logic;
        D, G : in std_logic
	   );
end ILD_1;
architecture struct of ILD_1 is
begin
  il1 : ILDX_1 port map (Q => Q, D => D, G => G, GE => '1');
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILD_1F is
  port( Q : out std_logic;
        D, G : in std_logic
	   );
end ILD_1F;
architecture struct of ILD_1F is
attribute xc_props : string;
attribute xc_props of il1 : label is "FAST";
begin
  il1 : ILDX_1 port map (Q => Q, D => D, G => G, GE => '1');
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILD_1U is
  port( Q : out std_logic;
        D, G : in std_logic
	   );
end ILD_1U;
architecture struct of ILD_1U is
attribute xc_props : string;
attribute xc_props of il1 : label is "UNBONDED";
begin
  il1 : ILDX_1 port map (Q => Q, D => D, G => G, GE => '1');
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILD is
  port( Q : out std_logic;
        D, G : in std_logic
	   );
end ILD;
architecture struct of ILD is
begin
  il1 : ILDX_1 port map (Q => Q, D => D, G => (not G), GE => '1');
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILDX is
  port( Q : out std_logic;
        D, G, GE : in std_logic
	   );
end ILDX;
architecture struct of ILDX is
begin
  il1 : ILDX_1 port map (Q => Q, D => D, G => (not G), GE => GE);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILDI_1 is
  port( Q : out std_logic;
        D, G : in std_logic
	   );
end ILDI_1;
architecture struct of ILDI_1 is
begin
  ili1 : ILDXI_1 port map (Q => Q, D => D, G => G, GE => '1');
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILDI_1F is
  port( Q : out std_logic;
        D, G : in std_logic
	   );
end ILDI_1F;
architecture struct of ILDI_1F is
attribute xc_props : string;
attribute xc_props of ili1 : label is "FAST";
begin
  ili1 : ILDXI_1 port map (Q => Q, D => D, G => G, GE => '1');
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILDI_1U is
  port( Q : out std_logic;
        D, G : in std_logic
	   );
end ILDI_1U;
architecture struct of ILDI_1U is
attribute xc_props : string;
attribute xc_props of ili1 : label is "UNBONDED";
begin
  ili1 : ILDXI_1 port map (Q => Q, D => D, G => G, GE => '1');
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILDI is
  port( Q : out std_logic;
        D, G : in std_logic
	   );
end ILDI;
architecture struct of ILDI is
begin
  ili1 : ILDXI_1 port map (Q => Q, D => D, G => (not G), GE => '1');
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity ILDXI is
  port( Q : out std_logic;
        D, G, GE : in std_logic
	   );
end ILDXI;
architecture struct of ILDXI is
begin
  ili1 : ILDXI_1 port map (Q => Q, D => D, G => (not G), GE => GE);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFD is
  port( Q : out std_logic;
      C, D: in std_logic
	  );
end OFD;
architecture struct of OFD is
begin
 of1 : OFDX port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFD_F is
  port( Q : out std_logic;
      C, D: in std_logic
	  );
end OFD_F;
architecture struct of OFD_F is
attribute xc_props : string;
attribute xc_props of of1 : label is "FAST";
begin
 of1 : OFDX port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFD_FU is
  port( Q : out std_logic;
      C, D: in std_logic
	  );
end OFD_FU;
architecture struct of OFD_FU is
attribute xc_props : string;
attribute xc_props of of1 : label is "FAST, UNBONDED";
begin
 of1 : OFDX port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFD_S is
  port( Q : out std_logic;
      C, D: in std_logic
	  );
end OFD_S;
architecture struct of OFD_S is
attribute xc_props : string;
attribute xc_props of of1 : label is "SLOW";
begin
 of1 : OFDX port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFD_U is
  port( Q : out std_logic;
      C, D: in std_logic
	  );
end OFD_U;
architecture struct of OFD_U is
attribute xc_props : string;
attribute xc_props of of1 : label is "UNBONDED";
begin
 of1 : OFDX port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFD_MF is
  port( Q : out std_logic;
      C, D: in std_logic
	  );
end OFD_MF;
architecture struct of OFD_MF is
attribute xc_props : string;
attribute xc_props of of1 : label is "MEDFAST";
begin
 of1 : OFDX port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFD_MS is
  port( Q : out std_logic;
      C, D: in std_logic
	  );
end OFD_MS;
architecture struct of OFD_MS is
attribute xc_props : string;
attribute xc_props of of1 : label is "MEDSLOW";
begin
 of1 : OFDX port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFD_1 is
  port( Q : out std_logic;
      C, D: in std_logic
	  );
end OFD_1;
architecture struct of OFD_1 is
begin
 of1 : OFDX port map (Q => Q, C => (not C), CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDX_1 is
  port( Q : out std_logic;
      C, CE, D: in std_logic
	  );
end OFDX_1;
architecture struct of OFDX_1 is
begin
 of1 : OFDX port map (Q => Q, C => (not C), CE => CE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDX_F is
  port( Q : out std_logic;
      C, CE, D: in std_logic
	  );
end OFDX_F;
architecture struct of OFDX_F is
attribute xc_props : string;
attribute xc_props of of1 : label is "FAST";
begin
 of1 : OFDX port map (Q => Q, C => C, CE => CE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDI is
  port( Q : out std_logic;
      C, D: in std_logic
	   );
end OFDI;
architecture struct of OFDI is
begin
  ofi1 : OFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDI_F is
  port( Q : out std_logic;
      C, D: in std_logic
	   );
end OFDI_F;
architecture struct of OFDI_F is
attribute xc_props : string;
attribute xc_props of ofi1 : label is "FAST";
begin
  ofi1 : OFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDI_S is
  port( Q : out std_logic;
      C, D: in std_logic
	   );
end OFDI_S;
architecture struct of OFDI_S is
attribute xc_props : string;
attribute xc_props of ofi1 : label is "SLOW";
begin
  ofi1 : OFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDI_MF is
  port( Q : out std_logic;
      C, D: in std_logic
	   );
end OFDI_MF;
architecture struct of OFDI_MF is
attribute xc_props : string;
attribute xc_props of ofi1 : label is "MEDFAST";
begin
  ofi1 : OFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDI_MS is
  port( Q : out std_logic;
      C, D: in std_logic
	   );
end OFDI_MS;
architecture struct of OFDI_MS is
attribute xc_props : string;
attribute xc_props of ofi1 : label is "MEDSLOW";
begin
  ofi1 : OFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDI_U is
  port( Q : out std_logic;
      C, D: in std_logic
	   );
end OFDI_U;
architecture struct of OFDI_U is
attribute xc_props : string;
attribute xc_props of ofi1 : label is "UNBONDED";
begin
  ofi1 : OFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDI_FU is
  port( Q : out std_logic;
      C, D: in std_logic
	   );
end OFDI_FU;
architecture struct of OFDI_FU is
attribute xc_props : string;
attribute xc_props of ofi1 : label is "FAST, UNBONDED";
begin
  ofi1 : OFDXI port map (Q => Q, C => C, CE => '1', D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDXI_1 is
  port( Q : out std_logic;
      C, CE, D: in std_logic
	   );
end OFDXI_1;
architecture struct of OFDXI_1 is
begin
  ofi1 : OFDXI port map (Q => Q, C => (not C), CE => CE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDXI_F is
  port( Q : out std_logic;
      C, CE, D: in std_logic
	   );
end OFDXI_F;
architecture struct of OFDXI_F is
attribute xc_props : string;
attribute xc_props of ofi1 : label is "FAST";
begin
  ofi1 : OFDXI port map (Q => Q, C => C, CE => CE, D => D);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDT is
  port( O : out std_logic;
      C, D, T : in std_logic
	  );
end OFDT;
architecture struct of OFDT is
begin
  oft1 : OFDTX port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDT_F is
  port( O : out std_logic;
      C, D, T : in std_logic
	  );
end OFDT_F;
architecture struct of OFDT_F is
attribute xc_props : string;
attribute xc_props of oft1 : label is "FAST";
begin
  oft1 : OFDTX port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDT_S is
  port( O : out std_logic;
      C, D, T : in std_logic
	  );
end OFDT_S;
architecture struct of OFDT_S is
attribute xc_props : string;
attribute xc_props of oft1 : label is "SLOW";
begin
  oft1 : OFDTX port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDT_MF is
  port( O : out std_logic;
      C, D, T : in std_logic
	  );
end OFDT_MF;
architecture struct of OFDT_MF is
attribute xc_props : string;
attribute xc_props of oft1 : label is "MEDFAST";
begin
  oft1 : OFDTX port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDT_MS is
  port( O : out std_logic;
      C, D, T : in std_logic
	  );
end OFDT_MS;
architecture struct of OFDT_MS is
attribute xc_props : string;
attribute xc_props of oft1 : label is "MEDSLOW";
begin
  oft1 : OFDTX port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDT_U is
  port( O : out std_logic;
      C, D, T : in std_logic
	  );
end OFDT_U;
architecture struct of OFDT_U is
attribute xc_props : string;
attribute xc_props of oft1 : label is "UNBONDED";
begin
  oft1 : OFDTX port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDT_1 is
  port( O : out std_logic;
      C, D, T : in std_logic
	  );
end OFDT_1;
architecture struct of OFDT_1 is
begin
  oft1 : OFDTX port map (O => O, C => (not C), CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTX_1 is
  port( O : out std_logic;
      C, CE, D, T : in std_logic
	  );
end OFDTX_1;
architecture struct of OFDTX_1 is
begin
  oft1 : OFDTX port map (O => O, C => (not C), CE => CE, D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTX_F is
  port( O : out std_logic;
      C, CE, D, T : in std_logic
	  );
end OFDTX_F;
architecture struct of OFDTX_F is
attribute xc_props : string;
attribute xc_props of oft1 : label is "FAST";
begin
  oft1 : OFDTX port map (O => O, C => C, CE => CE, D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTI is
  port ( O : out std_logic;
    C, D, T: in std_logic
	);
end OFDTI;
architecture struct of OFDTI is
begin
  ofti1 : OFDTXI port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTI_F is
  port ( O : out std_logic;
    C, D, T: in std_logic
	);
end OFDTI_F;
architecture struct of OFDTI_F is
attribute xc_props : string;
attribute xc_props of ofti1 : label is "FAST";
begin
  ofti1 : OFDTXI port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTI_S is
  port ( O : out std_logic;
    C, D, T: in std_logic
	);
end OFDTI_S;
architecture struct of OFDTI_S is
attribute xc_props : string;
attribute xc_props of ofti1 : label is "SLOW";
begin
  ofti1 : OFDTXI port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTI_MF is
  port ( O : out std_logic;
    C, D, T: in std_logic
	);
end OFDTI_MF;
architecture struct of OFDTI_MF is
attribute xc_props : string;
attribute xc_props of ofti1 : label is "MEDFAST";
begin
  ofti1 : OFDTXI port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTI_MS is
  port ( O : out std_logic;
    C, D, T: in std_logic
	);
end OFDTI_MS;
architecture struct of OFDTI_MS is
attribute xc_props : string;
attribute xc_props of ofti1 : label is "MEDSLOW";
begin
  ofti1 : OFDTXI port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTI_U is
  port ( O : out std_logic;
    C, D, T: in std_logic
	);
end OFDTI_U;
architecture struct of OFDTI_U is
attribute xc_props : string;
attribute xc_props of ofti1 : label is "UNBONDED";
begin
  ofti1 : OFDTXI port map (O => O, C => C, CE => '1', D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTXI_1 is
  port ( O : out std_logic;
    C, CE, D, T: in std_logic
	);
end OFDTXI_1;
architecture struct of OFDTXI_1 is
begin
  ofti1 : OFDTXI port map (O => O, C => (not C), CE => CE, D => D, T => T);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc4000;
use xc4000.components.all;
entity OFDTXI_F is
  port ( O : out std_logic;
    C, CE, D, T: in std_logic
	);
end OFDTXI_F;
architecture struct of OFDTXI_F is
attribute xc_props : string;
attribute xc_props of ofti1 : label is "FAST";
begin
  ofti1 : OFDTXI port map (O => O, C => C, CE => CE, D => D, T => T);
end struct;

