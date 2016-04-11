-- VHDL Dynachip/dl6000 Import library.
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


component rams32x1 
    port (clk: in std_logic;
          we : in std_logic;
              d : in std_logic;
              a0,a1,a2,a3,a4: in std_logic;
          r: out std_logic);
end component;

component rams32x1r 
    port (clk: in std_logic;
          we : in std_logic;
              d : in std_logic;
              a0,a1,a2,a3,a4: in std_logic;
          mr: in std_logic;
          r: out std_logic);
end component;

component ramd32x1 
    port (clk: in std_logic;
          we : in std_logic;
              d : in std_logic;
              a0w,a1w,a2w,a3w,a4w: in std_logic;
              a0r,a1r,a2r,a3r,a4r: in std_logic;
          r: out std_logic);
end component;

component ramd32x1r 
    port (clk: in std_logic;
          we : in std_logic;
              d : in std_logic;
              a0w,a1w,a2w,a3w,a4w: in std_logic;
              a0r,a1r,a2r,a3r,a4r: in std_logic;
          mr: in std_logic;
          r: out std_logic);
end component;

attribute black_box of all: component is true;

end components;

