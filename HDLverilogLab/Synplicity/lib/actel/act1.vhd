-- Derived from:

-- "$Header: s:/rcs/mappers/actel/lib/RCS/act1.vhd 1.1 1998/03/18 02:32:02 ken Exp $"

-- Actel Vital 95 library for R198 release.



library IEEE;

use IEEE.STD_LOGIC_1164.all;



package COMPONENTS is

attribute black_box: boolean;
attribute black_box_pad: boolean;
attribute black_box_pad_pin: string;

attribute black_box of components : package is true;

---- Components -----


component AND2

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND2B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND3

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND3A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND3B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND3C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND4

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND4A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND4B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND4C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AND4D

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AO1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AO1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AO1B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AO1C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AO2

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AO2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AO3

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AO4A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AO5A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AOI1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AOI1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AOI1B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AOI2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AOI2B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AOI3A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AOI4

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AX1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AX1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component AX1B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component BIBUF

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      PAD                            :	inout STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component BUF

   port(

      A                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component BUFA

   port(

      A                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component BUFF

   port(

      A                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component CLKBIBUF

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      PAD                            :	inout STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component CLKBUF

   port(

      PAD                            :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component CM8A

   port(

      A0                             :	in    STD_ULOGIC;

      A1                             :	in    STD_ULOGIC;

      SA                             :	in    STD_ULOGIC;

      B0                             :	in    STD_ULOGIC;

      B1                             :	in    STD_ULOGIC;

      SB                             :	in    STD_ULOGIC;

      S0                             :	in    STD_ULOGIC;

      S1                             :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component DF1

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DF1A

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DF1B

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DF1C

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFC1

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFC1A

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFC1B

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFC1C

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFC1D

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFC1E

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFC1F

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFC1G

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFE

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE1B

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE1C

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE2D

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE3A

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE3B

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE3C

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE3D

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE4

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE4A

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE4B

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFE4C

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFEA

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFEB

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFEC

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFED

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM1B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFM1C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFM3

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM3B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM3E

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM3F

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFM3G

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFM4

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM4A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM4B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM4C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFM4D

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFM4E

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM5A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFM5B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFMA

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFMB

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFME1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFP1

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFP1A

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFP1B

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFP1C

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFP1D

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DFP1E

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFP1F

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFP1G

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DFPC

   port(

      D                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DL1

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DL1A

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DL1B

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DL1C

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DL2A

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DL2B

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DL2C

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DL2D

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DLC

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLC1

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLC1A

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLC1F

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DLC1G

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DLCA

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLE

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLE1D

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DLE2A

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLE2B

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLE2C

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLE3A

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLE3B

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLE3C

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLEA

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLEB

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLEC

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLM

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLM2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLMA

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLME1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLP1

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLP1A

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLP1B

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLP1C

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component DLP1D

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component DLP1E

   port(

      D                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      QN                             :	out   STD_ULOGIC);

end component; 



component FA1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      CI                             :	in    STD_ULOGIC;

      CO                             :	out   STD_ULOGIC;

      S                              :	out   STD_ULOGIC);

end component; 



component FA1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      CI                             :	in    STD_ULOGIC;

      S                              :	out   STD_ULOGIC;

      CO                             :	out   STD_ULOGIC);

end component; 



component FA1B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      CI                             :	in    STD_ULOGIC;

      S                              :	out   STD_ULOGIC;

      CO                             :	out   STD_ULOGIC);

end component; 



component FA2A

   port(

      A0                             :	in    STD_ULOGIC;

      A1                             :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      CI                             :	in    STD_ULOGIC;

      S                              :	out   STD_ULOGIC;

      CO                             :	out   STD_ULOGIC);

end component; 



component GAND2

   port(

      A                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



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



component GNAND2

   port(

      A                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component GND

   port(

      Y                              :	out   STD_ULOGIC := '0');

end component; 



component GNOR2

   port(

      A                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component GOR2

   port(

      A                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component GXOR2

   port(

      A                              :	in    STD_ULOGIC;

      G                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component HA1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      CO                             :	out   STD_ULOGIC;

      S                              :	out   STD_ULOGIC);

end component; 



component HA1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      CO                             :	out   STD_ULOGIC;

      S                              :	out   STD_ULOGIC);

end component; 



component HA1B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      CO                             :	out   STD_ULOGIC;

      S                              :	out   STD_ULOGIC);

end component; 



component HA1C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      CO                             :	out   STD_ULOGIC;

      S                              :	out   STD_ULOGIC);

end component; 



component INBUF

   port(

      PAD                            :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component INV

   port(

      A                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component INVA

   port(

      A                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component JKF

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF1B

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF2A

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF2B

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF2C

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF2D

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF3A

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF3B

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF3C

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF3D

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKF4B

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component JKFPC

   port(

      J                              :	in    STD_ULOGIC;

      K                              :	in    STD_ULOGIC;

      CLK                            :	in    STD_ULOGIC;

      PRE                            :	in    STD_ULOGIC;

      CLR                            :	in    STD_ULOGIC;

      Q                              :	out   STD_ULOGIC);

end component; 



component MAJ3

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component MX2

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component MX2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component MX2B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component MX2C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



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



component MXC1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      S                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component MXT

   port(

      D0                             :	in    STD_ULOGIC;

      D1                             :	in    STD_ULOGIC;

      D2                             :	in    STD_ULOGIC;

      D3                             :	in    STD_ULOGIC;

      S0A                            :	in    STD_ULOGIC;

      S0B                            :	in    STD_ULOGIC;

      S1                             :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND2

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND2B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND3

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND3A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND3B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND3C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND4

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND4A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND4B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND4C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NAND4D

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR2

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR2B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR3

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR3A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR3B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR3C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR4

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR4A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR4B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR4C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component NOR4D

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA1B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA1C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA2

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA3

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA3A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA3B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA4A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OA5

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OAI1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OAI2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OAI3

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OAI3A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR2

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR2A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR2B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR3

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR3A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR3B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR3C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR4

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR4A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR4B

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR4C

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OR4D

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      D                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component OUTBUF

   port(

      D                              :	in    STD_ULOGIC;

      PAD                            :	out   STD_ULOGIC);

end component; 



component TRIBUFF

   port(

      D                              :	in    STD_ULOGIC;

      E                              :	in    STD_ULOGIC;

      PAD                            :	out   STD_ULOGIC);

end component; 



component VCC

   port(

      Y                              :	out   STD_ULOGIC := '1');

end component; 



component XA1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component XA1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component XNOR2

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component XO1

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component XO1A

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      C                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 



component XOR2

   port(

      A                              :	in    STD_ULOGIC;

      B                              :	in    STD_ULOGIC;

      Y                              :	out   STD_ULOGIC);

end component; 

attribute black_box of all : component is true;

end COMPONENTS;


