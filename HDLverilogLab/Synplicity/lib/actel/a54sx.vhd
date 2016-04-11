-- Derived from 54SX vhdl library available in Actel R1-1998
-- Updated from 54sx vhdl library available in Actel R3-1998
----------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package COMPONENTS is

attribute black_box: boolean;
attribute black_box_pad: boolean;
attribute black_box_pad_pin: string;

attribute black_box of components : package is true;

----- Component AND2 -----
component AND2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND2A -----
component AND2A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND2B -----
component AND2B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND3 -----
component AND3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND3A -----
component AND3A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND3B -----
component AND3B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND3C -----
component AND3C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND4 -----
component AND4
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND4A -----
component AND4A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND4B -----
component AND4B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND4C -----
component AND4C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND4D -----
component AND4D
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND5A -----
component AND5A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND5B -----
component AND5B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AND5C -----
component AND5C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO1 -----
component AO1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO1A -----
component AO1A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO1B -----
component AO1B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO1C -----
component AO1C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO1D -----
component AO1D
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO1E -----
component AO1E
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO2 -----
component AO2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO2A -----
component AO2A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO2B -----
component AO2B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO2C -----
component AO2C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO2D -----
component AO2D
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO2E -----
component AO2E
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO3 -----
component AO3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO3A -----
component AO3A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO3B -----
component AO3B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO3C -----
component AO3C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO4A -----
component AO4A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO5A -----
component AO5A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO6 -----
component AO6
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO6A -----
component AO6A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO7 -----
component AO7
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO8 -----
component AO8
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO9 -----
component AO9
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO10 -----
component AO10
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO11 -----
component AO11
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO12 -----
component AO12
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO13 -----
component AO13
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO14 -----
component AO14
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO15 -----
component AO15
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO16 -----
component AO16
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO17 -----
component AO17
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AO18 -----
component AO18
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI1 -----
component AOI1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI1A -----
component AOI1A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI1B -----
component AOI1B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI1C -----
component AOI1C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI1D -----
component AOI1D
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI2A -----
component AOI2A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI2B -----
component AOI2B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI3A -----
component AOI3A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI4 -----
component AOI4
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI4A -----
component AOI4A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AOI5 -----
component AOI5
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AX1 -----
component AX1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AX1A -----
component AX1A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AX1B -----
component AX1B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AX1C -----
component AX1C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AX1D -----
component AX1D
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AX1E -----
component AX1E
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXO1 -----
component AXO1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXO2 -----
component AXO2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXO3 -----
component AXO3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXO5 -----
component AXO5
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXO6 -----
component AXO6
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXO7 -----
component AXO7
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXOI1 -----
component AXOI1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXOI2 -----
component AXOI2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXOI3 -----
component AXOI3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXOI4 -----
component AXOI4
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXOI5 -----
component AXOI5
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component AXOI7 -----
component AXOI7
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component BIBUF -----
component BIBUF
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      PAD                            :	inout STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component BUFA -----
component BUFA
   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component BUFF -----
component BUFF
   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CLKBUF -----
component CLKBUF
   port(
      PAD                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;

----- Component CLKBUFI -----

component CLKBUFI
   port(
      PAD                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;

----- Component CLKINT -----
component CLKINT
   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;

----- Component CLKINTI -----
component CLKINTI
   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

----- Component CM7 -----
component CM7
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CM8 -----
component CM8
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CM8F -----
component CM8F
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC;
      FY                             :	out   STD_ULOGIC);
end component;


----- Component CM8INV -----
component CM8INV
   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;

----- Component CMA9 -----
component CMA9
   port(
      D0                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

----- Component CMAF -----
component CMAF
   port(
      D0                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

----- Component CMB3 -----
component CMB3
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 


----- Component CMB7 -----
component CMB7
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMBB -----
component CMBB
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMBF -----
component CMBF
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;

----- Component CMEA -----
component CMEA
   port(
      DB                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

----- Component CMEB -----
component CMEB
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMEE -----
component CMEE
   port(
      DB                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMEF -----
component CMEF
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;

----- Component CMF1 -----
component CMF1
   port(
      D0                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 
----- Component CMF2 -----

component CMF2
   port(
      DB                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 
----- Component CMF3 -----
component CMF3
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;

----- Component CMF4 -----
component CMF4
   port(
      DB                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 

----- Component CMF5 -----
component CMF5
   port(
      D0                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMF6 -----
component CMF6
   port(
      DB                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMF7 -----
component CMF7
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;

----- Component CMF8 -----
component CMF8
   port(
      DB                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component; 


----- Component CMF9 -----
component CMF9
   port(
      D0                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMFA -----
component CMFA
   port(
      DB                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMFB -----
component CMFB
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMFC -----
component CMFC
   port(
      DB                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMFD -----
component CMFD
   port(
      D0                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CMFE -----
component CMFE
   port(
      DB                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S00                            :	in    STD_ULOGIC;
      S01                            :	in    STD_ULOGIC;
      S10                            :	in    STD_ULOGIC;
      S11                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CS1 -----
component CS1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CS2 -----
component CS2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CY2A -----
component CY2A
   port(
      A0                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      B0                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component CY2B -----
component CY2B
   port(
      A0                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      B0                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component DF1 -----
component DF1
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DF1B -----
component DF1B
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFC1B -----
component DFC1B
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFC1D -----
component DFC1D
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFE1B -----
component DFE1B
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFE1C -----
component DFE1C
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFE3C -----
component DFE3C
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFE3D -----
component DFE3D
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFE4F -----
component DFE4F
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFE4G -----
component DFE4G
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFEG -----
component DFEG
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFEH -----
component DFEH
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFP1 -----
component DFP1
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFP1A -----
component DFP1A
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFP1B -----
component DFP1B
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFP1D -----
component DFP1D
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFPC -----
component DFPC
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFPCA -----
component DFPCA
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFPCB -----
component DFPCB
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFPCC -----
component DFPCC
   port(
      D                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DL1 -----
component DL1
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DL1B -----
component DL1B
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DL2A -----
component DL2A
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DL2C -----
component DL2C
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLC -----
component DLC
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLC1 -----
component DLC1
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLC1A -----
component DLC1A
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLCA -----
component DLCA
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLE2C -----
component DLE2C
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLE3B -----
component DLE3B
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLE3C -----
component DLE3C
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLP1 -----
component DLP1
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLP1A -----
component DLP1A
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLP1B -----
component DLP1B
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DLP1C -----
component DLP1C
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component FA1 -----
component FA1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      S                              :	out   STD_ULOGIC;
      CO                             :	out   STD_ULOGIC);
end component;


----- Component FA1A -----
component FA1A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      S                              :	out   STD_ULOGIC;
      CO                             :	out   STD_ULOGIC);
end component;


----- Component FA1B -----
component FA1B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      S                              :	out   STD_ULOGIC;
      CO                             :	out   STD_ULOGIC);
end component;


----- Component FA2A -----
component FA2A
   port(
      A0                             :	in    STD_ULOGIC;
      A1                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      S                              :	out   STD_ULOGIC;
      CO                             :	out   STD_ULOGIC);
end component;


----- Component GAND2 -----
component GAND2
   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component GMX4 -----
component GMX4
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component GNAND2 -----
component GNAND2
   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component GND -----
component GND
   port(
      Y                              :	out   STD_ULOGIC := '0');
end component;


----- Component GNOR2 -----
component GNOR2
   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component GOR2 -----
component GOR2
   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component GXOR2 -----
component GXOR2
   port(
      A                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component HA1 -----
component HA1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component HA1A -----
component HA1A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component HA1B -----
component HA1B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component HA1C -----
component HA1C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component HCLKBUF -----
component HCLKBUF
   port(
      PAD                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component INBUF -----
component INBUF
   port(
      PAD                            :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component INV -----
component INV
   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component INVA -----
component INVA
   port(
      A                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component JKF -----
component JKF
   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component JKF1B -----
component JKF1B
   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component JKF2A -----
component JKF2A
   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component JKF2B -----
component JKF2B
   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component JKF3A -----
component JKF3A
   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component JKF3B -----
component JKF3B
   port(
      J                              :	in    STD_ULOGIC;
      K                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component MAJ3 -----
component MAJ3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MAJ3X -----
component MAJ3X
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MAJ3XI -----
component MAJ3XI
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MIN3 -----
component MIN3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MIN3X -----
component MIN3X
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MIN3XI -----
component MIN3XI
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MX2 -----
component MX2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MX2A -----
component MX2A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MX2B -----
component MX2B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MX2C -----
component MX2C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component MX4 -----
component MX4
   port(
      D0                             :	in    STD_ULOGIC;
      D1                             :	in    STD_ULOGIC;
      D2                             :	in    STD_ULOGIC;
      D3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND2 -----
component NAND2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND2A -----
component NAND2A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND2B -----
component NAND2B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND3 -----
component NAND3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND3A -----
component NAND3A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND3B -----
component NAND3B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND3C -----
component NAND3C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND4 -----
component NAND4
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND4A -----
component NAND4A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND4B -----
component NAND4B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND4C -----
component NAND4C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND4D -----
component NAND4D
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND5B -----
component NAND5B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NAND5C -----
component NAND5C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR2 -----
component NOR2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR2A -----
component NOR2A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR2B -----
component NOR2B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR3 -----
component NOR3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR3A -----
component NOR3A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR3B -----
component NOR3B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR3C -----
component NOR3C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR4 -----
component NOR4
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR4A -----
component NOR4A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR4B -----
component NOR4B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR4C -----
component NOR4C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR4D -----
component NOR4D
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR5B -----
component NOR5B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component NOR5C -----
component NOR5C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA1 -----
component OA1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA1A -----
component OA1A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA1B -----
component OA1B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA1C -----
component OA1C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA2 -----
component OA2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA2A -----
component OA2A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA3 -----
component OA3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA3A -----
component OA3A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA3B -----
component OA3B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA4 -----
component OA4
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA4A -----
component OA4A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OA5 -----
component OA5
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OAI1 -----
component OAI1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OAI2A -----
component OAI2A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OAI3 -----
component OAI3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OAI3A -----
component OAI3A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR2 -----
component OR2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR2A -----
component OR2A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR2B -----
component OR2B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR3 -----
component OR3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR3A -----
component OR3A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR3B -----
component OR3B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR3C -----
component OR3C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR4 -----
component OR4
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR4A -----
component OR4A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR4B -----
component OR4B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR4C -----
component OR4C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR4D -----
component OR4D
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR5A -----
component OR5A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR5B -----
component OR5B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OR5C -----
component OR5C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component OUTBUF -----
component OUTBUF
   port(
      D                              :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
end component;


----- Component TF1A -----
component TF1A
   port(
      T                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component TF1B -----
component TF1B
   port(
      T                              :	in    STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component TRIBUFF -----
component TRIBUFF
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      PAD                            :	out   STD_ULOGIC);
end component;


----- Component VCC -----
component VCC
   port(
      Y                              :	out   STD_ULOGIC := '1');
end component;


----- Component XA1 -----
component XA1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XA1A -----
component XA1A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XA1B -----
component XA1B
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XA1C -----
component XA1C
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XAI1 -----
component XAI1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XAI1A -----
component XAI1A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XNOR2 -----
component XNOR2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XNOR3 -----
component XNOR3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XO1 -----
component XO1
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XO1A -----
component XO1A
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XOR2 -----
component XOR2
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component XOR3 -----
component XOR3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component ZOR3 -----
component ZOR3
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;


----- Component ZOR3I -----
component ZOR3I
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      Y                              :	out   STD_ULOGIC);
end component;

attribute black_box of all : component is true;

end COMPONENTS;

---- end of  components library ----


