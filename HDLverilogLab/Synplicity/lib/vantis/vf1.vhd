library ieee;
use ieee.std_logic_1164.all;
library synplify;
use synplify.attributes.all;
package components is
   attribute black_box of components : package is true;

component XORSOFT
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of XORSOFT : component is true;

component XOR6
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic
 );
end component;
attribute black_box of XOR6 : component is true;

component XOR5
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic
 );
end component;
attribute black_box of XOR5 : component is true;

component XOR4
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end component;
attribute black_box of XOR4 : component is true;

component XOR3
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of XOR3 : component is true;

component XOR2
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of XOR2 : component is true;

component XNOR6
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic
 );
end component;
attribute black_box of XNOR6 : component is true;

component XNOR5
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic
 );
end component;
attribute black_box of XNOR5 : component is true;

component XNOR4
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end component;
attribute black_box of XNOR4 : component is true;

component XNOR3
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of XNOR3 : component is true;

component XNOR2
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of XNOR2 : component is true;

component VCC
 port (
   X : out std_logic
 );
end component;
attribute black_box of VCC : component is true;

component UBPRS
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of UBPRS : component is true;

component UBPRR
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of UBPRR : component is true;

component UBPR2S
 port (
   Q0 : out std_logic;
   Q1 : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of UBPR2S : component is true;

component UBPR2R
 port (
   Q0 : out std_logic;
   Q1 : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of UBPR2R : component is true;

component UBPR2
 port (
   Q0 : out std_logic;
   Q1 : out std_logic;
   D : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of UBPR2 : component is true;

component UBPR
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of UBPR : component is true;

component UBPLS
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of UBPLS : component is true;

component UBPLR
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of UBPLR : component is true;

component UBPL2S
 port (
   Q0 : out std_logic;
   Q1 : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of UBPL2S : component is true;

component UBPL2R
 port (
   Q0 : out std_logic;
   Q1 : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of UBPL2R : component is true;

component UBPL2
 port (
   Q0 : out std_logic;
   Q1 : out std_logic;
   D : in std_logic;
   LAT : in std_logic
 );
end component;
attribute black_box of UBPL2 : component is true;

component UBPL
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic
 );
end component;
attribute black_box of UBPL : component is true;

component TFFSH
 port (
   Q : out std_logic;
   T : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of TFFSH : component is true;

component TFFS
 port (
   Q : out std_logic;
   T : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of TFFS : component is true;

component TFFRSSH
 port (
   Q : out std_logic;
   T : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of TFFRSSH : component is true;

component TFFRSS
 port (
   Q : out std_logic;
   T : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of TFFRSS : component is true;

component TFFRSH
 port (
   Q : out std_logic;
   T : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of TFFRSH : component is true;

component TFFRS
 port (
   Q : out std_logic;
   T : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of TFFRS : component is true;

component TFFRH
 port (
   Q : out std_logic;
   T : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of TFFRH : component is true;

component TFFR
 port (
   Q : out std_logic;
   T : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of TFFR : component is true;

component TFF
 port (
   Q : out std_logic;
   T : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of TFF : component is true;

component RSFFSH
 port (
   Q : out std_logic;
   SE : in std_logic;
   RE : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of RSFFSH : component is true;

component RSFFS
 port (
   Q : out std_logic;
   SE : in std_logic;
   RE : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of RSFFS : component is true;

component RSFFRSSH
 port (
   Q : out std_logic;
   SE : in std_logic;
   RE : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of RSFFRSSH : component is true;

component RSFFRSS
 port (
   Q : out std_logic;
   SE : in std_logic;
   RE : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of RSFFRSS : component is true;

component RSFFRSH
 port (
   Q : out std_logic;
   SE : in std_logic;
   RE : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of RSFFRSH : component is true;

component RSFFRS
 port (
   Q : out std_logic;
   SE : in std_logic;
   RE : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of RSFFRS : component is true;

component RSFFRH
 port (
   Q : out std_logic;
   SE : in std_logic;
   RE : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of RSFFRH : component is true;

component RSFFR
 port (
   Q : out std_logic;
   SE : in std_logic;
   RE : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of RSFFR : component is true;

component RSFF
 port (
   Q : out std_logic;
   SE : in std_logic;
   RE : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of RSFF : component is true;

component ROTS
 port (
   O : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   OE : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of ROTS : component is true;
attribute black_box_tri_pins of ROTS : component is "O";

component ROTR
 port (
   O : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   OE : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of ROTR : component is true;
attribute black_box_tri_pins of ROTR : component is "O";

component ROT
 port (
   O : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of ROT : component is true;
attribute black_box_tri_pins of ROT : component is "O";

component RORIS
 port (
   O : out std_logic;
   Q : out std_logic;
   IO : inout std_logic;
   D : in std_logic;
   CLKO : in std_logic;
   CLKI : in std_logic;
   OE : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of RORIS : component is true;
attribute black_box_tri_pins of RORIS : component is "O";

component RORIR
 port (
   O : out std_logic;
   Q : out std_logic;
   IO : inout std_logic;
   D : in std_logic;
   CLKI : in std_logic;
   CLKO : in std_logic;
   OE : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of RORIR : component is true;
attribute black_box_tri_pins of RORIR : component is "O";

component RORI
 port (
   O : out std_logic;
   Q : out std_logic;
   IO : inout std_logic;
   D : in std_logic;
   CLKI : in std_logic;
   CLKO : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of RORI : component is true;
attribute black_box_tri_pins of RORI : component is "O";

component ROLIS
 port (
   O : out std_logic;
   Q : out std_logic;
   IO : inout std_logic;
   D : in std_logic;
   CLK : in std_logic;
   LAT : in std_logic;
   OE : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of ROLIS : component is true;
attribute black_box_tri_pins of ROLIS : component is "O";

component ROLIR
 port (
   O : out std_logic;
   Q : out std_logic;
   IO : inout std_logic;
   D : in std_logic;
   CLK : in std_logic;
   LAT : in std_logic;
   OE : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of ROLIR : component is true;
attribute black_box_tri_pins of ROLIR : component is "O";

component ROLI
 port (
   O : out std_logic;
   Q : out std_logic;
   IO : inout std_logic;
   D : in std_logic;
   CLK : in std_logic;
   LAT : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of ROLI : component is true;
attribute black_box_tri_pins of ROLI : component is "O";

component RIS
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of RIS : component is true;

component RIR
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of RIR : component is true;

component RI
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of RI : component is true;

component RBC
end component;
attribute black_box of RBC : component is true;

component PUC
end component;
attribute black_box of PUC : component is true;

component OR8
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic
 );
end component;
attribute black_box of OR8 : component is true;

component OR7
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic
 );
end component;
attribute black_box of OR7 : component is true;

component OR6
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic
 );
end component;
attribute black_box of OR6 : component is true;

component OR5
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic
 );
end component;
attribute black_box of OR5 : component is true;

component OR4
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end component;
attribute black_box of OR4 : component is true;

component OR3
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of OR3 : component is true;

component OR2
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of OR2 : component is true;

component OPAD
 port (
   OPAD : out std_logic
 );
end component;
attribute black_box of OPAD : component is true;

component OBUF
 port (
   O : out std_logic;
   I0 : in std_logic
 );
end component;
attribute black_box of OBUF : component is true;

component OA321
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic
 );
end component;
attribute black_box of OA321 : component is true;

component OA221
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic
 );
end component;
attribute black_box of OA221 : component is true;

component OA21
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of OA21 : component is true;

component NOR8
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic
 );
end component;
attribute black_box of NOR8 : component is true;

component NOR7
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic
 );
end component;
attribute black_box of NOR7 : component is true;

component NOR6
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic
 );
end component;
attribute black_box of NOR6 : component is true;

component NOR5
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic
 );
end component;
attribute black_box of NOR5 : component is true;

component NOR4
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end component;
attribute black_box of NOR4 : component is true;

component NOR3
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of NOR3 : component is true;

component NOR2
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of NOR2 : component is true;

component NEQ22
 port (
   O : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   B0 : in std_logic;
   B1 : in std_logic
 );
end component;
attribute black_box of NEQ22 : component is true;

component NAN8
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic
 );
end component;
attribute black_box of NAN8 : component is true;

component NAN7
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic
 );
end component;
attribute black_box of NAN7 : component is true;

component NAN6
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic
 );
end component;
attribute black_box of NAN6 : component is true;

component NAN5
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic
 );
end component;
attribute black_box of NAN5 : component is true;

component NAN4
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end component;
attribute black_box of NAN4 : component is true;

component NAN3
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of NAN3 : component is true;

component NAN2
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of NAN2 : component is true;

component MUX4
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   S0 : in std_logic;
   S1 : in std_logic
 );
end component;
attribute black_box of MUX4 : component is true;

component MUX2
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   S0 : in std_logic
 );
end component;
attribute black_box of MUX2 : component is true;

component MAJOR3
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of MAJOR3 : component is true;

component LIS
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of LIS : component is true;

component LIR
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of LIR : component is true;

component LI
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic
 );
end component;
attribute black_box of LI : component is true;

component JTAG
 port (
   TDO : out std_logic;
   TDI : in std_logic;
   TCLK : in std_logic;
   TMOD : in std_logic
 );
end component;
attribute black_box of JTAG : component is true;

component JKFFSH
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of JKFFSH : component is true;

component JKFFS
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of JKFFS : component is true;

component JKFFRSSH
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   S : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of JKFFRSSH : component is true;

component JKFFRSS
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   S : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of JKFFRSS : component is true;

component JKFFRSH
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   S : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of JKFFRSH : component is true;

component JKFFRS
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   S : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of JKFFRS : component is true;

component JKFFRH
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of JKFFRH : component is true;

component JKFFR
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of JKFFR : component is true;

component JKFF
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of JKFF : component is true;

component IPAD
 port (
   IPAD : in std_logic
 );
end component;
attribute black_box of IPAD : component is true;

component INVTL
 port (
   O : out std_logic;
   I0 : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of INVTL : component is true;
attribute black_box_tri_pins of INVTL : component is "O";

component INVTH
 port (
   O : out std_logic;
   I0 : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of INVTH : component is true;
attribute black_box_tri_pins of INVTH : component is "O";

component INV
 port (
   O : out std_logic;
   I0 : in std_logic
 );
end component;
attribute black_box of INV : component is true;

component IBUF
 port (
   O : out std_logic;
   I0 : in std_logic
 );
end component;
attribute black_box of IBUF : component is true;

component GSRBUF
 port (
   O : out std_logic;
   SRI : in std_logic
 );
end component;
attribute black_box of GSRBUF : component is true;

component GND
 port (
   X : out std_logic
 );
end component;
attribute black_box of GND : component is true;

component EQ22
 port (
   O : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   B0 : in std_logic;
   B1 : in std_logic
 );
end component;
attribute black_box of EQ22 : component is true;

component ENOR
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of ENOR : component is true;

component DLATSH
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DLATSH : component is true;

component DLATS
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DLATS : component is true;

component DLATRSH
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DLATRSH : component is true;

component DLATRS
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DLATRS : component is true;

component DLATRH
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of DLATRH : component is true;

component DLATR
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of DLATR : component is true;

component DLAT
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic
 );
end component;
attribute black_box of DLAT : component is true;

component DFFSH
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFSH : component is true;

component DFFS
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFS : component is true;

component DFFRSSH
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFRSSH : component is true;

component DFFRSS
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFRSS : component is true;

component DFFRSH
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFRSH : component is true;

component DFFRS
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFRS : component is true;

component DFFRH
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of DFFRH : component is true;

component DFFR
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of DFFR : component is true;

component DFFCSH
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFCSH : component is true;

component DFFCS
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFCS : component is true;

component DFFCRSSH
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFCRSSH : component is true;

component DFFCRSS
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFCRSS : component is true;

component DFFCRSH
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFCRSH : component is true;

component DFFCRS
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of DFFCRS : component is true;

component DFFCRH
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of DFFCRH : component is true;

component DFFCR
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of DFFCR : component is true;

component DFFC
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic
 );
end component;
attribute black_box of DFFC : component is true;

component DFF
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of DFF : component is true;

component DEMUX4
 port (
   O0 : out std_logic;
   O1 : out std_logic;
   O2 : out std_logic;
   O3 : out std_logic;
   EN : in std_logic;
   S0 : in std_logic;
   S1 : in std_logic
 );
end component;
attribute black_box of DEMUX4 : component is true;

component DEMUX2
 port (
   O0 : out std_logic;
   O1 : out std_logic;
   EN : in std_logic;
   S0 : in std_logic
 );
end component;
attribute black_box of DEMUX2 : component is true;

component COM_UDCP
 port (
   Q : out std_logic;
   COUT : out std_logic;
   A : in std_logic;
   D : in std_logic;
   LOAD : in std_logic;
   UD : in std_logic;
   CNTEN : in std_logic;
   CIN : in std_logic
 );
end component;
attribute black_box of COM_UDCP : component is true;

component CLKI
 port (
   O : out std_logic;
   PAD : in std_logic
 );
end component;
attribute black_box of CLKI : component is true;

component CCU_UDC
 port (
   Q : out std_logic;
   COUT : out std_logic;
   UD : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic;
   CIN : in std_logic
 );
end component;
attribute black_box of CCU_UDC : component is true;

component CCU_UCP
 port (
   Q : out std_logic;
   COUT : out std_logic;
   D : in std_logic;
   LOAD : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic;
   CIN : in std_logic
 );
end component;
attribute black_box of CCU_UCP : component is true;

component CCU_DCP
 port (
   Q : out std_logic;
   COUT : out std_logic;
   D : in std_logic;
   LOAD : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic;
   CIN : in std_logic
 );
end component;
attribute black_box of CCU_DCP : component is true;

component CCU_AS
 port (
   S0 : out std_logic;
   COUT : out std_logic;
   A0 : in std_logic;
   B0 : in std_logic;
   CIN : in std_logic;
   AS : in std_logic
 );
end component;
attribute black_box of CCU_AS : component is true;

component CCU_AGB
 port (
   COUT : out std_logic;
   A0 : in std_logic;
   B0 : in std_logic;
   CIN : in std_logic
 );
end component;
attribute black_box of CCU_AGB : component is true;

component CCU_ABS
 port (
   S0 : out std_logic;
   COUT : out std_logic;
   D : in std_logic;
   PN : in std_logic;
   CIN : in std_logic
 );
end component;
attribute black_box of CCU_ABS : component is true;

component BUFTL
 port (
   O : out std_logic;
   I0 : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of BUFTL : component is true;
attribute black_box_tri_pins of BUFTL : component is "O";


component BUFTI
 port (
   O : out std_logic;
   I0 : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of BUFTI : component is true;
attribute black_box_tri_pins of BUFTI : component is "O";


component OBUFTH
 port (
   O : out std_logic;
   I0 : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of OBUFTH : component is true;
attribute black_box_tri_pins of OBUFTH : component is "O";


component BUFF
 port (
   O : out std_logic;
   I0 : in std_logic
 );
end component;
attribute black_box of BUFF : component is true;


component BI_DIR
 port (
   O : out std_logic;
   I0 : in std_logic;
   IO : inout std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of BI_DIR : component is true;
attribute black_box_tri_pins of BI_DIR : component is "O";


component BIPAD
 port (
   BIPAD : inout std_logic
 );
end component;
attribute black_box of BIPAD : component is true;

component AS_LSB
 port (
   S0 : out std_logic;
   COUT : out std_logic;
   A0 : in std_logic;
   B0 : in std_logic;
   CIN : in std_logic;
   AS : in std_logic
 );
end component;
attribute black_box of AS_LSB : component is true;

component AO321
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic
 );
end component;
attribute black_box of AO321 : component is true;

component AO221
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic
 );
end component;
attribute black_box of AO221 : component is true;

component AO21
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of AO21 : component is true;

component AND9
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic
 );
end component;
attribute black_box of AND9 : component is true;

component AND8
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic
 );
end component;
attribute black_box of AND8 : component is true;

component AND7
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic
 );
end component;
attribute black_box of AND7 : component is true;

component AND6
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic
 );
end component;
attribute black_box of AND6 : component is true;

component AND5
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic
 );
end component;
attribute black_box of AND5 : component is true;

component AND4
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end component;
attribute black_box of AND4 : component is true;

component AND3
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of AND3 : component is true;

component AND20
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic;
   I11 : in std_logic;
   I12 : in std_logic;
   I13 : in std_logic;
   I14 : in std_logic;
   I15 : in std_logic;
   I16 : in std_logic;
   I17 : in std_logic;
   I18 : in std_logic;
   I19 : in std_logic
 );
end component;
attribute black_box of AND20 : component is true;

component AND2
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of AND2 : component is true;

component AND19
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic;
   I11 : in std_logic;
   I12 : in std_logic;
   I13 : in std_logic;
   I14 : in std_logic;
   I15 : in std_logic;
   I16 : in std_logic;
   I17 : in std_logic;
   I18 : in std_logic
 );
end component;
attribute black_box of AND19 : component is true;

component AND18
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic;
   I11 : in std_logic;
   I12 : in std_logic;
   I13 : in std_logic;
   I14 : in std_logic;
   I15 : in std_logic;
   I16 : in std_logic;
   I17 : in std_logic
 );
end component;
attribute black_box of AND18 : component is true;

component AND17
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic;
   I11 : in std_logic;
   I12 : in std_logic;
   I13 : in std_logic;
   I14 : in std_logic;
   I15 : in std_logic;
   I16 : in std_logic
 );
end component;
attribute black_box of AND17 : component is true;

component AND16
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic;
   I11 : in std_logic;
   I12 : in std_logic;
   I13 : in std_logic;
   I14 : in std_logic;
   I15 : in std_logic
 );
end component;
attribute black_box of AND16 : component is true;

component AND15
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic;
   I11 : in std_logic;
   I12 : in std_logic;
   I13 : in std_logic;
   I14 : in std_logic
 );
end component;
attribute black_box of AND15 : component is true;

component AND14
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic;
   I11 : in std_logic;
   I12 : in std_logic;
   I13 : in std_logic
 );
end component;
attribute black_box of AND14 : component is true;

component AND13
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic;
   I11 : in std_logic;
   I12 : in std_logic
 );
end component;
attribute black_box of AND13 : component is true;

component AND12
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic;
   I11 : in std_logic
 );
end component;
attribute black_box of AND12 : component is true;

component AND11
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic;
   I10 : in std_logic
 );
end component;
attribute black_box of AND11 : component is true;

component AND10
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic;
   I4 : in std_logic;
   I5 : in std_logic;
   I6 : in std_logic;
   I7 : in std_logic;
   I8 : in std_logic;
   I9 : in std_logic
 );
end component;
attribute black_box of AND10 : component is true;

component VF1_DFF_CE
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic;
   CE : in std_logic;
   NOTIFIER : in std_logic
 );
end component;
attribute black_box of VF1_DFF_CE : component is true;

component VF1_DFF
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   R : in std_logic;
   S : in std_logic;
   NOTIFIER : in std_logic
 );
end component;
attribute black_box of VF1_DFF : component is true;

component VF1_LATCH
 port (
   Q : out std_logic;
   D : in std_logic;
   LAT : in std_logic;
   R : in std_logic;
   S : in std_logic;
   NOTIFIER : in std_logic
 );
end component;
attribute black_box of VF1_LATCH : component is true;

component VF1_JKFF
 port (
   Q : out std_logic;
   CLK : in std_logic;
   J : in std_logic;
   K : in std_logic;
   S : in std_logic;
   R : in std_logic;
   NOTIFIER : in std_logic
 );
end component;
attribute black_box of VF1_JKFF : component is true;

component VF1_RSFF
 port (
   Q : out std_logic;
   CLK : in std_logic;
   RE : in std_logic;
   SE : in std_logic;
   S : in std_logic;
   R : in std_logic;
   NOTIFIER : in std_logic
 );
end component;
attribute black_box of VF1_RSFF : component is true;

component VF1_TFF
 port (
   Q : out std_logic;
   CLK : in std_logic;
   T : in std_logic;
   S : in std_logic;
   R : in std_logic;
   NOTIFIER : in std_logic
 );
end component;
attribute black_box of VF1_TFF : component is true;
end package components;
