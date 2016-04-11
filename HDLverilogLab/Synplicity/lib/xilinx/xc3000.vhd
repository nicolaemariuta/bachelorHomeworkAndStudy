-- VHDL Xilinx/xc3000 Import library.
-- Copyright 1995 Synplicity Inc.
library IEEE;
use IEEE.STD_LOGIC_1164.all;


package components is

attribute black_box: boolean;
attribute black_box_pad: boolean;
attribute black_box_pad_pin: string;
attribute black_box_tri_pins : string;
attribute xc_alias: string;
attribute xc_props: string;
attribute synthesis_noprune: boolean;

attribute black_box of components: package is true;
----- Component ACLK ----
component ACLK
   port(
      O				    : out STD_LOGIC;
      I				    : in STD_LOGIC);
end component;

---- Component CLBMAP ----
component CLBMAP
   port(
      A, B, C, D, E, K, DI, EC, RD, X, Y : in STD_LOGIC
      );
end component;
attribute synthesis_noprune of CLBMAP: component is true; 

component CLBMAP_PUC
   port(
      A, B, C, D, E, K, DI, EC, RD, X, Y : in STD_LOGIC
      );
end component;
attribute synthesis_noprune of CLBMAP_PUC: component is true; 

component CLBMAP_PLC
   port(
      A, B, C, D, E, K, DI, EC, RD, X, Y : in STD_LOGIC
      );
end component;
attribute synthesis_noprune of CLBMAP_PLC: component is true; 

component CLBMAP_PUO
   port(
      A, B, C, D, E, K, DI, EC, RD, X, Y : in STD_LOGIC
      );
end component;
attribute synthesis_noprune of CLBMAP_PUO: component is true; 

component CLBMAP_PLO
   port(
      A, B, C, D, E, K, DI, EC, RD, X, Y : in STD_LOGIC
      );
end component;
attribute synthesis_noprune of CLBMAP_PLO: component is true; 

component CLB
   port(
      A, B, C, D, E, O1, EC, K, RD : in STD_LOGIC;
      X, Y			   : out STD_LOGIC
      );
end component;

component GCLK
   port(
	O			   : out STD_LOGIC;
        I			   : in STD_LOGIC
       );
end component;

component ILD
   port(
       G, D			   : in STD_LOGIC;
       Q			   : out STD_LOGIC
       );
end component;

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

component BUFG_F
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

----- Component FDCE -----
component FDCE
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CE                             :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;


----- Component FDC -----
component FDC
   port(
      Q                              :	out   STD_LOGIC;
      C                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      D                              :	in    STD_LOGIC
      );
end component;


----- Component INV -----
component INV
   port(
      O                              :	out   STD_LOGIC;
      I                              :	in    STD_LOGIC);
end component;

---- Component IOBUF -----

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

----- Component FDPI ----
component FDPI
   port(
       Q			    : out STD_LOGIC;
       D, C, PRE		    : in STD_LOGIC
      );
end component;
      
----- Component FDPEI ----
component FDPEI
   port(
       Q			    : out STD_LOGIC;
       D, C, CE, PRE		    : in STD_LOGIC
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
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC
      );
end component;

component IFD_U
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC
      );
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

component OBUF_U
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

component OBUFT_S
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

----- Component OFD -----
component OFD
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC
      );
end component;

component OFD_F
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC
      );
end component;

component OFD_FU
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC
      );
end component;

component OFD_U
   port(
      Q                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC
      );
end component;

----- Component OFDT -----
component OFDT
   port(
      O                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

component OFDT_F
   port(
      O                              :	out   STD_LOGIC;
      D                              :	in    STD_LOGIC;
      C                              :	in    STD_LOGIC;
      T                              :	in    STD_LOGIC
      );
end component;

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

----- Component OSC -----
component OSC
   port(
	O 			     : out STD_LOGIC
       );
end component;
attribute synthesis_noprune of OSC : component is true;

component GXTL
   port(
        O			     : out STD_LOGIC
       );
end component;
attribute synthesis_noprune of GXTL : component is true;

----- Component PULLUP -----
component PULLUP1
   port(
      O                              :	in   STD_LOGIC := 'H');
end component;

component PULLUP
   port(
      O                              :	in   STD_LOGIC := 'H');
end component;
attribute synthesis_noprune of PULLUP : component is true;

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
attribute synthesis_noprune of XVCC: component is true;

attribute black_box of ACLK : component is true;

attribute black_box of CLBMAP : component is true;

attribute black_box of CLBMAP_PUC : component is true;
attribute xc_alias of CLBMAP_PUC : component is "CLBMAP";
attribute xc_props of CLBMAP_PUC : component is "MAP=PUC";

attribute black_box of CLBMAP_PLC : component is true;
attribute xc_alias of CLBMAP_PLC : component is "CLBMAP";
attribute xc_props of CLBMAP_PLC : component is "MAP=PLC";

attribute black_box of CLBMAP_PUO : component is true;
attribute xc_alias of CLBMAP_PUO : component is "CLBMAP";
attribute xc_props of CLBMAP_PUO : component is "MAP=PUO";

attribute black_box of CLBMAP_PLO : component is true;
attribute xc_alias of CLBMAP_PLO : component is "CLBMAP";
attribute xc_props of CLBMAP_PLO : component is "MAP=PLO";

attribute black_box of CLB : component is true;

attribute black_box of GCLK : component is true;

attribute black_box of ILD : component is true;
attribute black_box_pad_pin of ILD : component is "D";
attribute xc_alias of ILD : component is "INLAT";

attribute black_box of AND2 : component is true;
attribute xc_alias of AND2 : component is "AND";

attribute black_box of AND3 : component is true;
attribute xc_alias of AND3 : component is "AND";

attribute black_box of AND4 : component is true;
attribute xc_alias of AND4 : component is "AND";

attribute black_box of AND5 : component is true;
attribute xc_alias of AND5 : component is "AND";

attribute black_box of BUF : component is true;

attribute black_box of BUFG : component is true;

attribute black_box of BUFG_F : component is true;
attribute xc_alias of BUFG_F : component is "BUFG";
attribute xc_props of BUFG_F : component is "FAST";

attribute black_box of BUFT : component is true;
attribute xc_alias of BUFT : component is "TBUF";

attribute black_box of FDCE : component is true;
attribute xc_alias of FDCE : component is "DFF";

attribute black_box of FDC : component is true;
attribute xc_alias of FDC : component is "DFF";

attribute black_box of INV : component is true;

attribute black_box of IOBUF: component is true;
attribute black_box_pad_pin of IOBUF: component is "IO";

attribute black_box of IOBUF_N_F: component is true;
attribute black_box_pad_pin of IOBUF_N_F: component is "IO";

attribute black_box of IOBUF_N_S: component is true;
attribute black_box_pad_pin of IOBUF_N_S: component is "IO";

attribute black_box of IBUF : component is true;
attribute black_box_pad_pin of IBUF : component is "I";

attribute black_box of IBUF_U : component is true;
attribute black_box_pad_pin of IBUF_U : component is "I";
attribute xc_alias of IBUF_U : component is "IBUF";
attribute xc_props of IBUF_U : component is "UNBONDED";

attribute black_box of IBUF_CMOS : component is true;
attribute black_box_pad_pin of IBUF_CMOS : component is "I";
attribute xc_alias of IBUF_CMOS : component is "IBUF";
attribute xc_props of IBUF_CMOS : component is "CMOS";

attribute black_box of IBUF_TTL : component is true;
attribute black_box_pad_pin of IBUF_TTL : component is "I";
attribute xc_alias of IBUF_TTL : component is "IBUF";
attribute xc_props of IBUF_TTL : component is "TTL";

attribute black_box of IFD : component is true;
attribute black_box_pad_pin of IFD : component is "D";
attribute xc_alias of IFD : component is "INFF";

attribute black_box of IFD_U : component is true;
attribute black_box_pad_pin of IFD_U : component is "D";
attribute xc_alias of IFD_U : component is "INFF";
attribute xc_props of IFD_U : component is "UNBONDED";

attribute black_box of NAND2 : component is true;
attribute xc_alias of NAND2 : component is "NAND";

attribute black_box of NAND3 : component is true;
attribute xc_alias of NAND3 : component is "NAND";

attribute black_box of NAND4 : component is true;
attribute xc_alias of NAND4 : component is "NAND";

attribute black_box of NAND5 : component is true;
attribute xc_alias of NAND5 : component is "NAND";

attribute black_box of NOR2 : component is true;
attribute xc_alias of NOR2 : component is "NOR";

attribute black_box of NOR3 : component is true;
attribute xc_alias of NOR3 : component is "NOR";

attribute black_box of NOR4 : component is true;
attribute xc_alias of NOR4 : component is "NOR";

attribute black_box of NOR5 : component is true;
attribute xc_alias of NOR5 : component is "NOR";

attribute black_box of OBUF : component is true;
attribute black_box_pad_pin of OBUF : component is "O";

attribute black_box of OBUF_F : component is true;
attribute black_box_pad_pin of OBUF_F : component is "O";
attribute xc_alias of OBUF_F : component is "OBUF";
attribute xc_props of OBUF_F : component is "FAST";

attribute black_box of OBUF_U : component is true;
attribute black_box_pad_pin of OBUF_U : component is "O";
attribute xc_alias of OBUF_U : component is "OBUF";
attribute xc_props of OBUF_U : component is "UNBONDED";

attribute black_box of OBUFT : component is true;
attribute black_box_pad_pin of OBUFT : component is "O";

attribute black_box of OBUFT_S : component is true;
attribute black_box_pad_pin of OBUFT_S : component is "O";
attribute black_box of OBUFT_F : component is true;
attribute black_box_pad_pin of OBUFT_F : component is "O";
attribute xc_alias of OBUFT_S : component is "OBUFT";
attribute xc_props of OBUFT_S : component is "FAST";
attribute xc_alias of OBUFT_F : component is "OBUFT";
attribute xc_props of OBUFT_F : component is "FAST";

attribute black_box of OFD : component is true;
attribute black_box_pad_pin of OFD : component is "Q";
attribute xc_alias of OFD : component is "OUTFF";

attribute black_box of OFD_F : component is true;
attribute black_box_pad_pin of OFD_F : component is "Q";
attribute xc_alias of OFD_F : component is "OUTFF";
attribute xc_props of OFD_F : component is "FAST";

attribute black_box of OFD_FU : component is true;
attribute black_box_pad_pin of OFD_FU : component is "Q";
attribute xc_alias of OFD_FU : component is "OUTFF";
attribute xc_props of OFD_FU : component is "FAST, UNBONDED";

attribute black_box of OFD_U : component is true;
attribute black_box_pad_pin of OFD_U : component is "Q";
attribute xc_alias of OFD_U : component is "OUTFF";
attribute xc_props of OFD_U : component is "UNBONDED";

attribute black_box of OFDT : component is true;
attribute black_box_pad_pin of OFDT : component is "O";
attribute xc_alias of OFDT : component is "OUTFFT";

attribute black_box of OFDT_F : component is true; 
attribute black_box_pad_pin of OFDT_F : component is "O";
attribute xc_alias of OFDT_F : component is "OUTFFT";
attribute xc_props of OFDT_F : component is "FAST";

attribute black_box of OR2 : component is true;
attribute xc_alias of OR2 : component is "OR";

attribute black_box of OR3 : component is true;
attribute xc_alias of OR3 : component is "OR";

attribute black_box of OR4 : component is true;
attribute xc_alias of OR4 : component is "OR";

attribute black_box of OR5 : component is true;
attribute xc_alias of OR5 : component is "OR";

attribute black_box of OSC : component is true;

attribute black_box of PULLUP : component is true;
-- attribute black_box of PULLUP1 : component is true;
attribute xc_alias of PULLUP1 : component is "PULLUP";

attribute black_box of XGND : component is true;
attribute xc_alias of XGND : component is "GND";

attribute black_box of XNOR2 : component is true;
attribute xc_alias of XNOR2 : component is "XNOR";

attribute black_box of XNOR3 : component is true;
attribute xc_alias of XNOR3 : component is "XNOR";

attribute black_box of XNOR4 : component is true;
attribute xc_alias of XNOR4 : component is "XNOR";

attribute black_box of XNOR5 : component is true;
attribute xc_alias of XNOR5 : component is "XNOR";

attribute black_box of XOR2 : component is true;
attribute xc_alias of XOR2 : component is "XOR";

attribute black_box of XOR3 : component is true;
attribute xc_alias of XOR3 : component is "XOR";

attribute black_box of XOR4 : component is true;
attribute xc_alias of XOR4 : component is "XOR";

attribute black_box of XOR5 : component is true;
attribute xc_alias of XOR5 : component is "XOR";

attribute black_box of XVCC : component is true;
attribute xc_alias of XVCC : component is "VCC";

end components;

library IEEE;
use IEEE.std_logic_1164.all;
library xc3000;
use xc3000.components.all;

entity FDPI is
 port (Q : out std_logic;
       D, C, PRE : in std_logic);
end FDPI;
architecture struct of FDPI is
  signal D_IN, Q_OUT: std_logic;
begin
 inst1: INV port map (D_IN, D);
 inst2: FDC port map (Q_OUT, C, PRE, D_IN);
 inst3: INV port map (Q, Q_OUT);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc3000;
use xc3000.components.all;

entity FDPEI is
 port (Q : out std_logic;
       D, C, CE, PRE : in std_logic);
end FDPEI;
architecture struct of FDPEI is
 signal D_IN, Q_OUT: std_logic;
begin
 inst1: INV port map (D_IN, D);
 inst2: FDCE port map (Q_OUT, C, CE, PRE, D_IN);
 inst3: INV port map (Q, Q_OUT);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc3000;
use xc3000.components.all;

entity GXTL is
 port (O: out std_logic);
end GXTL;
architecture struct of GXTL is
 signal OSCOUT: std_logic;
begin
 inst1: OSC port map (OSCOUT);
 inst2: ACLK port map (O, OSCOUT);
end struct;


library IEEE;
use IEEE.std_logic_1164.all;
library xc3000;
use xc3000.components.all;

entity IOBUF is
 port (O : out std_logic;
      IO : inout std_logic;
      I, T : in std_logic
      );
end IOBUF;

architecture struct of IOBUF is
begin
  inst1: OBUFT_S port map (IO, I, T);
  inst2: IBUF port map (O, IO);
end struct;
 
library IEEE;
use IEEE.std_logic_1164.all;
library xc3000;
use xc3000.components.all;

entity IOBUF_N_F is
 port (O : out std_logic;
      IO : inout std_logic;
      I, T : in std_logic
      );
end IOBUF_N_F;

architecture struct of IOBUF_N_F is
begin
  inst1: OBUFT_F port map (IO, I, T);
  inst2: IBUF port map (O, IO);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc3000;
use xc3000.components.all;
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
library xc3000;
use xc3000.components.all;

entity IOBUF_N_S is
 port (O : out std_logic;
      IO : inout std_logic;
      I, T : in std_logic
      );
end IOBUF_N_S;

architecture struct of IOBUF_N_S is
begin
  inst1: OBUFT_S port map (IO, I, T);
  inst2: IBUF port map (O, IO);
end struct;

library IEEE;
use IEEE.std_logic_1164.all;
library xc3000;
use xc3000.components.all;
entity PULLUP1 is
  port (O : in std_logic);
end PULLUP1;

architecture struct of PULLUP1 is
attribute synthesis_noprune : boolean;
attribute synthesis_noprune of struct : architecture is true;
begin
   p: PULLUP port map (O => O);
end struct;
