-- VHDL ACT3/Actel Import Library
-- Copyright 1995, Synplicity Inc.
library ieee;
use ieee.std_logic_1164.all;

package components is

attribute black_box: boolean;
attribute black_box_pad: boolean;
attribute black_box_pad_pin: string;

attribute black_box of components : package is true;

----- Component A3IOMOD1 -----
component A3IOMOD1
   port(
      Y                              :	out   STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IDE                            :	in    STD_LOGIC;
      SLEW                           :	in    STD_LOGIC);
end component;


----- Component A3IOMOD2 -----
component A3IOMOD2
   port(
      Y                              :	out   STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IDE                            :	in    STD_LOGIC;
      IEN                            :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      OTB                            :	in    STD_LOGIC;
      PCL                            :	in    STD_LOGIC;
      SLEW                           :	in    STD_LOGIC;
      SRS                            :	in    STD_LOGIC);
end component;


----- Component AND2 -----
component AND2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND2A -----
component AND2A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND2B -----
component AND2B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND3 -----
component AND3
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND3A -----
component AND3A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND3B -----
component AND3B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND3C -----
component AND3C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND4 -----
component AND4
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND4A -----
component AND4A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND4B -----
component AND4B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND4C -----
component AND4C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND4D -----
component AND4D
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AND5B -----
component AND5B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO1 -----
component AO1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO1A -----
component AO1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO1B -----
component AO1B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO1C -----
component AO1C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO1D -----
component AO1D
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO1E -----
component AO1E
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO2 -----
component AO2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO2A -----
component AO2A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO2B -----
component AO2B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO2C -----
component AO2C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO2D -----
component AO2D
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO2E -----
component AO2E
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO3 -----
component AO3
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO3A -----
component AO3A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO3B -----
component AO3B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO3C -----
component AO3C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO4A -----
component AO4A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO5A -----
component AO5A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO6 -----
component AO6
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO6A -----
component AO6A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO7 -----
component AO7
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO8 -----
component AO8
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO9 -----
component AO9
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO10 -----
component AO10
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AO11 -----
component AO11
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI1 -----
component AOI1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI1A -----
component AOI1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI1B -----
component AOI1B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI1C -----
component AOI1C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI1D -----
component AOI1D
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI2A -----
component AOI2A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI2B -----
component AOI2B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI3A -----
component AOI3A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI4 -----
component AOI4
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AOI4A -----
component AOI4A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AX1 -----
component AX1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AX1A -----
component AX1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AX1B -----
component AX1B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component AX1C -----
component AX1C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BBHS -----
component BBHS
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BBUFTH -----
component BBUFTH
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BBUFTL -----
component BBUFTL
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BIBUF -----
component BIBUF
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BRECTH -----
component BRECTH
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BRECTL -----
component BRECTL
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BREPTH -----
component BREPTH
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BREPTL -----
component BREPTL
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BUF -----
component BUF
   port(
      A                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;

----- Component BUFF -----
component BUFF
   port(
      A                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component BUFA -----
component BUFA
   port(
      A                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component CLKBIBUF -----
component CLKBIBUF
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component CLKBUF -----
component CLKBUF
   port(
      PAD                            :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component CLKINT -----
component CLKINT
   port(
      A                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component CM8 -----
component CM8
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S00                            :	in    STD_LOGIC;
      S01                            :	in    STD_LOGIC;
      S10                            :	in    STD_LOGIC;
      S11                            :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component CS1 -----
component CS1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component CS2 -----
component CS2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component CY2A -----
component CY2A
   port(
      A0                             :	in    STD_LOGIC;
      A1                             :	in    STD_LOGIC;
      B0                             :	in    STD_LOGIC;
      B1                             :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component CY2B -----
component CY2B
   port(
      A0                             :	in    STD_LOGIC;
      A1                             :	in    STD_LOGIC;
      B0                             :	in    STD_LOGIC;
      B1                             :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component DECETH -----
component DECETH
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IDE                            :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DECETL -----
component DECETL
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IDE                            :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DEPETH -----
component DEPETH
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IDE                            :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DEPETL -----
component DEPETL
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IDE                            :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DF1 -----
component DF1
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DF1A -----
component DF1A
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DF1B -----
component DF1B
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DF1C -----
component DF1C
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DFC1 -----
component DFC1
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFC1A -----
component DFC1A
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFC1B -----
component DFC1B
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFC1D -----
component DFC1D
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFE -----
component DFE
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFE1B -----
component DFE1B
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFE1C -----
component DFE1C
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFE3A -----
component DFE3A
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFE3B -----
component DFE3B
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFE3C -----
component DFE3C
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFE3D -----
component DFE3D
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFEA -----
component DFEA
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM -----
component DFM
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM1B -----
component DFM1B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DFM1C -----
component DFM1C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DFM3 -----
component DFM3
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM3B -----
component DFM3B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM3E -----
component DFM3E
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM4C -----
component DFM4C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DFM4D -----
component DFM4D
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DFM6A -----
component DFM6A
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      S1                             :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM6B -----
component DFM6B
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      S1                             :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM7A -----
component DFM7A
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      S10                            :	in    STD_LOGIC;
      S11                            :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM7B -----
component DFM7B
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      S10                            :	in    STD_LOGIC;
      S11                            :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM8A -----
component DFM8A
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S00                            :	in    STD_LOGIC;
      S01                            :	in    STD_LOGIC;
      S10                            :	in    STD_LOGIC;
      S11                            :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFM8B -----
component DFM8B
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S00                            :	in    STD_LOGIC;
      S01                            :	in    STD_LOGIC;
      S10                            :	in    STD_LOGIC;
      S11                            :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFMA -----
component DFMA
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFMB -----
component DFMB
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFME1A -----
component DFME1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFP1 -----
component DFP1
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFP1A -----
component DFP1A
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFP1B -----
component DFP1B
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFP1C -----
component DFP1C
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DFP1D -----
component DFP1D
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFP1E -----
component DFP1E
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DFP1F -----
component DFP1F
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DFP1G -----
component DFP1G
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DFPC -----
component DFPC
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DFPCA -----
component DFPCA
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DL1 -----
component DL1
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DL1A -----
component DL1A
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DL1B -----
component DL1B
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DL1C -----
component DL1C
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DLC -----
component DLC
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLC1 -----
component DLC1
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLC1A -----
component DLC1A
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLC1F -----
component DLC1F
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DLC1G -----
component DLC1G
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DLCA -----
component DLCA
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLE -----
component DLE
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLE1D -----
component DLE1D
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DLE2B -----
component DLE2B
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLE2C -----
component DLE2C
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLE3B -----
component DLE3B
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLE3C -----
component DLE3C
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLEA -----
component DLEA
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLEB -----
component DLEB
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLEC -----
component DLEC
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLM -----
component DLM
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLM3 -----
component DLM3
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      S1                             :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLM3A -----
component DLM3A
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      S1                             :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;

----- Component DLM4 -----
component DLM4
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      S10                            :	in    STD_LOGIC;
      S11                            :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;

----- Component DLM4A ----
component DLM4A
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      S10                            :	in    STD_LOGIC;
      S11                            :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;

----- Component DLM8  ----
component DLM8
   port(
      A                              :	in    STD_LOGIC_VECTOR (7 downto 0);
      B                              :	in    STD_LOGIC_VECTOR (7 downto 0);
      S                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC_VECTOR (7 downto 0));
end component;

----- Component DLM8A ----
component DLM8A
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S00                            :	in    STD_LOGIC;
      S01                            :	in    STD_LOGIC;
      S10                            :	in    STD_LOGIC;
      S11                            :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;

----- Component DLM8B ----
component DLM8B
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S00                            :	in    STD_LOGIC;
      S01                            :	in    STD_LOGIC;
      S10                            :	in    STD_LOGIC;
      S11                            :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;

----- Component DLMA -----
component DLMA
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLME1A -----
component DLME1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLP1 -----
component DLP1
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLP1A -----
component DLP1A
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLP1B -----
component DLP1B
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLP1C -----
component DLP1C
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component DLP1D -----
component DLP1D
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component DLP1E -----
component DLP1E
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      QN                             :	out   STD_LOGIC);
end component;


----- Component FA1A -----
component FA1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      CI                             :	in    STD_LOGIC;
      CO                             :	out   STD_LOGIC;
      S                              :	out   STD_LOGIC);
end component;


----- Component FA1B -----
component FA1B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      CI                             :	in    STD_LOGIC;
      CO                             :	out   STD_LOGIC;
      S                              :	out   STD_LOGIC);
end component;


----- Component FA2A -----
component FA2A
   port(
      A0                             :	in    STD_LOGIC;
      A1                             :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      CI                             :	in    STD_LOGIC;
      CO                             :	out   STD_LOGIC;
      S                              :	out   STD_LOGIC);
end component;


----- Component FECTMH -----
component FECTMH
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      M                              :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component FECTML -----
component FECTML
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      M                              :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component FEPTMH -----
component FEPTMH
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      M                              :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component FEPTML -----
component FEPTML
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      M                              :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	inout STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component GAND2 -----
component GAND2
   port(
      A                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component GMX4 -----
component GMX4
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component GNAND2 -----
component GNAND2
   port(
      A                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component GND -----
component GND
   port(
      Y                              :	out   STD_LOGIC := '0');
end component;


----- Component GNOR2 -----
component GNOR2
   port(
      A                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component GOR2 -----
component GOR2
   port(
      A                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component GXOR2 -----
component GXOR2
   port(
      A                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component HA1 -----
component HA1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      CO                             :	out   STD_LOGIC;
      S                              :	out   STD_LOGIC);
end component;


----- Component HA1A -----
component HA1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      CO                             :	out   STD_LOGIC;
      S                              :	out   STD_LOGIC);
end component;


----- Component HA1B -----
component HA1B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      CO                             :	out   STD_LOGIC;
      S                              :	out   STD_LOGIC);
end component;


----- Component HA1C -----
component HA1C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      CO                             :	out   STD_LOGIC;
      S                              :	out   STD_LOGIC);
end component;


----- Component HCLKBUF -----
component HCLKBUF
   port(
      PAD                            :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component IBUF -----
component IBUF
   port(
      PAD                            :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component INBUF -----
component INBUF
   port(
      PAD                            :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component INV -----
component INV
   port(
      A                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component INVA -----
component INVA
   port(
      A                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component IOCLKBUF -----
component IOCLKBUF
   port(
      PAD                            :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component IOPCLBUF -----
component IOPCLBUF
   port(
      PAD                            :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component IREC -----
component IREC
   port(
      CLK                            :	in    STD_LOGIC;
      IDE                            :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      PAD                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component IREP -----
component IREP
   port(
      CLK                            :	in    STD_LOGIC;
      IDE                            :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      PAD                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component JKF -----
component JKF
   port(
      J                              :	in    STD_LOGIC;
      K                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component JKF1B -----
component JKF1B
   port(
      J                              :	in    STD_LOGIC;
      K                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component JKF2A -----
component JKF2A
   port(
      J                              :	in    STD_LOGIC;
      K                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component JKF2B -----
component JKF2B
   port(
      J                              :	in    STD_LOGIC;
      K                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component JKF2C -----
component JKF2C
   port(
      J                              :	in    STD_LOGIC;
      K                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component JKF2D -----
component JKF2D
   port(
      J                              :	in    STD_LOGIC;
      K                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component MAJ3 -----
component MAJ3
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component MX2 -----
component MX2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component MX2A -----
component MX2A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component MX2B -----
component MX2B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component MX2C -----
component MX2C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component MX4 -----
component MX4
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0                             :	in    STD_LOGIC;
      S1                             :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component MXC1 -----
component MXC1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component MXT -----
component MXT
   port(
      D0                             :	in    STD_LOGIC;
      D1                             :	in    STD_LOGIC;
      D2                             :	in    STD_LOGIC;
      D3                             :	in    STD_LOGIC;
      S0A                            :	in    STD_LOGIC;
      S0B                            :	in    STD_LOGIC;
      S1                             :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND2 -----
component NAND2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND2A -----
component NAND2A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND2B -----
component NAND2B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND3 -----
component NAND3
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND3A -----
component NAND3A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND3B -----
component NAND3B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND3C -----
component NAND3C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND4 -----
component NAND4
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND4A -----
component NAND4A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND4B -----
component NAND4B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND4C -----
component NAND4C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND4D -----
component NAND4D
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NAND5C -----
component NAND5C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR2 -----
component NOR2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR2A -----
component NOR2A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR2B -----
component NOR2B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR3 -----
component NOR3
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR3A -----
component NOR3A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR3B -----
component NOR3B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR3C -----
component NOR3C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR4 -----
component NOR4
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR4A -----
component NOR4A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR4B -----
component NOR4B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR4C -----
component NOR4C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR4D -----
component NOR4D
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component NOR5C -----
component NOR5C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA1 -----
component OA1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA1A -----
component OA1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA1B -----
component OA1B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA1C -----
component OA1C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA2 -----
component OA2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA2A -----
component OA2A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA3 -----
component OA3
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA3A -----
component OA3A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA3B -----
component OA3B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA4 -----
component OA4
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA4A -----
component OA4A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OA5 -----
component OA5
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OAI1 -----
component OAI1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OAI2A -----
component OAI2A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OAI3 -----
component OAI3
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OAI3A -----
component OAI3A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OBHS -----
component OBHS
   port(
      D                              :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component OBUFTH -----
component OBUFTH
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component OBUFTL -----
component OBUFTL
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component OR2 -----
component OR2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR2A -----
component OR2A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR2B -----
component OR2B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR3 -----
component OR3
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR3A -----
component OR3A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR3B -----
component OR3B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR3C -----
component OR3C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR4 -----
component OR4
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR4A -----
component OR4A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR4B -----
component OR4B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR4C -----
component OR4C
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR4D -----
component OR4D
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component OR5B -----
component OR5B
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component ORECTH -----
component ORECTH
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component ORECTL -----
component ORECTL
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component OREPTH -----
component OREPTH
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component OREPTL -----
component OREPTL
   port(
      CLK                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      IOPCL                          :	in    STD_LOGIC;
      ODE                            :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component OUTBUF -----
component OUTBUF
   port(
      D                              :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component TA153 -----
component TA153
   port(
      C0                             :	in    STD_LOGIC;
      C1                             :	in    STD_LOGIC;
      C2                             :	in    STD_LOGIC;
      C3                             :	in    STD_LOGIC;
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      EN                             :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component TA157 -----
component TA157
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      S                              :	in    STD_LOGIC;
      EN                             :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component TBHS -----
component TBHS
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component TF1A -----
component TF1A
   port(
      T                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component TF1B -----
component TF1B
   port(
      T                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
end component;


----- Component TRIBUFF -----
component TRIBUFF
   port(
      D                              :	in    STD_LOGIC;
      E                              :	in    STD_LOGIC;
      PAD                            :	out   STD_LOGIC);
end component;


----- Component VCC -----
component VCC
   port(
      Y                              :	out   STD_LOGIC := '1');
end component;


----- Component XA1 -----
component XA1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component XA1A -----
component XA1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component XNORb -----
component XNORb
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;

----- Component XNOR2 -----
component XNOR2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;

----- Component XO1 -----
component XO1
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component XO1A -----
component XO1A
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;


----- Component XORb -----
component XORb
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;

----- Component XOR2 -----
component XOR2
   port(
      A                              :	in    STD_LOGIC;
      B                              :	in    STD_LOGIC;
      Y                              :	out   STD_LOGIC);
end component;

attribute black_box of all : component is true;
attribute black_box_pad_pin of A3IOMOD1 : component is "PAD";
attribute black_box_pad_pin of A3IOMOD2 : component is "PAD";
attribute black_box_pad_pin of BBHS : component is "PAD";
attribute black_box_pad_pin of BBUFTH : component is "PAD";
attribute black_box_pad_pin of BBUFTL : component is "PAD";
attribute black_box_pad_pin of BIBUF : component is "PAD";
attribute black_box_pad_pin of BRECTH : component is "PAD";
attribute black_box_pad_pin of BRECTL : component is "PAD";
attribute black_box_pad_pin of BREPTH : component is "PAD";
attribute black_box_pad_pin of BREPTL : component is "PAD";
attribute black_box_pad_pin of CLKBIBUF : component is "PAD";
attribute black_box_pad_pin of CLKBUF : component is "PAD";
attribute black_box_pad_pin of DECETH : component is "PAD";
attribute black_box_pad_pin of DECETL : component is "PAD";
attribute black_box_pad_pin of DEPETH : component is "PAD";
attribute black_box_pad_pin of DEPETL : component is "PAD";
attribute black_box_pad_pin of FECTMH : component is "PAD";
attribute black_box_pad_pin of FECTML : component is "PAD";
attribute black_box_pad_pin of FEPTMH : component is "PAD";
attribute black_box_pad_pin of FEPTML : component is "PAD";
attribute black_box_pad_pin of HCLKBUF : component is "PAD";
attribute black_box_pad_pin of IBUF : component is "PAD";
attribute black_box_pad_pin of INBUF : component is "PAD";
attribute black_box_pad_pin of IOCLKBUF : component is "PAD";
attribute black_box_pad_pin of IOPCLBUF : component is "PAD";
attribute black_box_pad_pin of IREC : component is "PAD";
attribute black_box_pad_pin of IREP : component is "PAD";
attribute black_box_pad_pin of OBHS : component is "PAD";
attribute black_box_pad_pin of OBUFTH : component is "PAD";
attribute black_box_pad_pin of OBUFTL : component is "PAD";
attribute black_box_pad_pin of ORECTH : component is "PAD";
attribute black_box_pad_pin of ORECTL : component is "PAD";
attribute black_box_pad_pin of OREPTH : component is "PAD";
attribute black_box_pad_pin of OREPTL : component is "PAD";
attribute black_box_pad_pin of OUTBUF : component is "PAD";
attribute black_box_pad_pin of TBHS : component is "PAD";
attribute black_box_pad_pin of TRIBUFF : component is "PAD";

end components;
