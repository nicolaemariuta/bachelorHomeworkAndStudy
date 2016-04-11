-- VHDL Dynachip/dy6000/dl6000 Import library.
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

----- Component g1clk -----
component g1clk

   port(
      y                              :	out   STD_LOGIC;
      a                              :	in    STD_LOGIC);
end component;
attribute black_box of g1clk : component is true;
attribute black_box_pad_pin of g1clk : component is "a";

----- Component g2clk -----
component g2clk

   port(
      y                              :	out   STD_LOGIC;
      a                              :	in    STD_LOGIC);
end component;
attribute black_box of g2clk : component is true;
attribute black_box_pad_pin of g2clk : component is "a";

----- Component gsr -----
component gsr

   port(
      y                              :	out   STD_LOGIC;
      a                              :	in    STD_LOGIC);
end component;
attribute black_box of gsr : component is true;
attribute black_box_pad_pin of gsr : component is "a";

----- Component clkob -----
component clkob

   port(
      y                              :	out   STD_LOGIC;
      oe                             :	in    STD_LOGIC;
      a                              :	in    STD_LOGIC);
end component;
attribute black_box of clkob : component is true;
attribute black_box_pad_pin of clkob : component is "y";

----- Component ib -----
component ib

   port(
      y                              :	out   STD_LOGIC;
      a                              :	in    STD_LOGIC);
end component;
attribute black_box of ib : component is true;
attribute black_box_pad_pin of ib : component is "a";

----- Component ob -----
component ob

   port(
      y                              :	out   STD_LOGIC;
      a                              :	in    STD_LOGIC);
end component;
attribute black_box of ob : component is true;
attribute black_box_pad_pin of ob : component is "y";


----- Component obr -----
component obr

   port(
      Q                              :	out  STD_LOGIC;
      CLK                            :	in   STD_LOGIC;
      EN                             :	in   STD_LOGIC;
      D                              :	in   STD_LOGIC);
end component;
attribute black_box of obr : component is true;
attribute black_box_pad_pin of obr : component is "Q";


----- Component obrt -----
component obrt

   port(
      Q                              :	out  STD_LOGIC;
      CLK                            :	in   STD_LOGIC;
      OE                             :	in   STD_LOGIC;
      EN                             :	in   STD_LOGIC;
      D                              :	in   STD_LOGIC);
end component;
attribute black_box of obrt : component is true;
attribute black_box_pad_pin of obrt : component is "Q";


----- Component bidirr -----
component bidirr

   port(
      IO                             :	inout  STD_LOGIC;
      CLK1                           :	in   STD_LOGIC;
      OE                             :	in   STD_LOGIC;
      D                              :	in   STD_LOGIC;
      EN                             :	in   STD_LOGIC;
      CLK2                           :	in   STD_LOGIC;
      Q                              :	out  STD_LOGIC);
end component;
attribute black_box of bidirr : component is true;
attribute black_box_pad_pin of bidirr : component is "IO";


----- Component bidirn -----
component bidirn

   port(
      IO                             :	inout  STD_LOGIC;
      CLK                            :	in   STD_LOGIC;
      EN                             :	in   STD_LOGIC;
      OE                             :	in   STD_LOGIC;
      A                              :	in   STD_LOGIC;
      Q                              :	out  STD_LOGIC);
end component;
attribute black_box of bidirn : component is true;
attribute black_box_pad_pin of bidirn : component is "IO";


----- Component bidinr -----
component bidinr

   port(
      IO                             :	inout  STD_LOGIC;
      CLK                            :	in   STD_LOGIC;
      EN                             :	in   STD_LOGIC;
      OE                             :	in   STD_LOGIC;
      D                              :	in   STD_LOGIC;
      Y                              :	out  STD_LOGIC);
end component;
attribute black_box of bidinr : component is true;
attribute black_box_pad_pin of bidinr : component is "IO";


component rams32x1 
    port (clk: in std_logic;
          we : in std_logic;
              d : in std_logic;
              a0,a1,a2,a3,a4: in std_logic;
          r: out std_logic);
end component;
attribute black_box of rams32x1 : component is true;

component rams32x1r 
    port (clk: in std_logic;
          we : in std_logic;
              d : in std_logic;
              a0,a1,a2,a3,a4: in std_logic;
          mr: in std_logic;
          r: out std_logic);
end component;
attribute black_box of rams32x1r : component is true;

component ramd32x1 
    port (clk: in std_logic;
          we : in std_logic;
              d : in std_logic;
              a0w,a1w,a2w,a3w,a4w: in std_logic;
              a0r,a1r,a2r,a3r,a4r: in std_logic;
          r: out std_logic);
end component;
attribute black_box of ramd32x1 : component is true;

component ramd32x1r 
    port (clk: in std_logic;
          we : in std_logic;
              d : in std_logic;
              a0w,a1w,a2w,a3w,a4w: in std_logic;
              a0r,a1r,a2r,a3r,a4r: in std_logic;
          mr: in std_logic;
          r: out std_logic);
end component;
attribute black_box of ramd32x1r : component is true;

component ramd32x1_2c 
	port (
		clkr,clkw,we,gpd,d,a0w,a1w,a2w,a3w,a4w,a0r,a1r,a2r,a3r,a4r: in std_logic;
		r: out std_logic
    );
end component;
attribute black_box of ramd32x1_2c : component is true;

component ramd32x1r_2c 
	port (
		clkr,clkw,we,gpd,d,a0w,a1w,a2w,a3w,a4w,a0r,a1r,a2r,a3r,a4r,mr: in std_logic;
        r: out std_logic
    );
end component;
attribute black_box of ramd32x1r_2c: component is true;

component rams32x1_1 
	port (
		clk,we,gpd,d,a0,a1,a2,a3,a4: in std_logic;
        r: out std_logic
    );
end component;
attribute black_box of rams32x1_1 : component is true;

component rams32x1r_1 
	port (
		clk,we,gpd,d,a0,a1,a2,a3,a4,mr: in std_logic;
        r: out std_logic
    );
end component;
attribute black_box of rams32x1r_1 : component is true;

end components;
