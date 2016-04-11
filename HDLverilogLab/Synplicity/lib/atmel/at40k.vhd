library ieee;
use ieee.std_logic_1164.all;
library synplify;
use synplify.attributes.all;
package components is
   attribute black_box of components : package is true;
component zero
 port (
   Q : out std_logic
 );
end component;
attribute black_box of zero : component is true;
component xo4
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   D : in std_logic
 );
end component;
attribute black_box of xo4 : component is true;
component xo3
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic
 );
end component;
attribute black_box of xo3 : component is true;
component xo2
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic
 );
end component;
attribute black_box of xo2 : component is true;
component xn4
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   D : in std_logic
 );
end component;
attribute black_box of xn4 : component is true;
component xn3
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic
 );
end component;
attribute black_box of xn3 : component is true;
component xn2
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic
 );
end component;
attribute black_box of xn2 : component is true;
component rsbuf
 port (
   Q : out std_logic;
   PAD : in std_logic
 );
end component;
attribute black_box of rsbuf : component is true;
component ramssync
 port (
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   A4 : in std_logic;
   WEN : in std_logic;
   OEN : in std_logic;
   CLK : in std_logic;
   D0 : inout std_logic;
   D1 : inout std_logic;
   D2 : inout std_logic;
   D3 : inout std_logic
 );
end component;
attribute black_box of ramssync : component is true;
attribute black_box_tri_pins of ramssync : component is "D0,D1,D2,D3";

component rams
 port (
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   A4 : in std_logic;
   WEN : in std_logic;
   OEN : in std_logic;
   D0 : inout std_logic;
   D1 : inout std_logic;
   D2 : inout std_logic;
   D3 : inout std_logic
 );
end component;
attribute black_box of rams : component is true;
attribute black_box_tri_pins of rams : component is "D0,D1,D2,D3";

component ramdsync
 port (
   AIN0 : in std_logic;
   AIN1 : in std_logic;
   AIN2 : in std_logic;
   AIN3 : in std_logic;
   AIN4 : in std_logic;
   AOUT0 : in std_logic;
   AOUT1 : in std_logic;
   AOUT2 : in std_logic;
   AOUT3 : in std_logic;
   AOUT4 : in std_logic;
   WEN : in std_logic;
   OEN : in std_logic;
   CLK : in std_logic;
   DIN0 : in std_logic;
   DIN1 : in std_logic;
   DIN2 : in std_logic;
   DIN3 : in std_logic;
   DOUT0 : out std_logic;
   DOUT1 : out std_logic;
   DOUT2 : out std_logic;
   DOUT3 : out std_logic
 );
end component;
attribute black_box of ramdsync : component is true;
attribute black_box_tri_pins of ramdsync : component is "DOUT0,DOUT1,DOUT2,DOUT3";

component ramd
 port (
   AIN0 : in std_logic;
   AIN1 : in std_logic;
   AIN2 : in std_logic;
   AIN3 : in std_logic;
   AIN4 : in std_logic;
   AOUT0 : in std_logic;
   AOUT1 : in std_logic;
   AOUT2 : in std_logic;
   AOUT3 : in std_logic;
   AOUT4 : in std_logic;
   WEN : in std_logic;
   OEN : in std_logic;
   DIN0 : in std_logic;
   DIN1 : in std_logic;
   DIN2 : in std_logic;
   DIN3 : in std_logic;
   DOUT0 : out std_logic;
   DOUT1 : out std_logic;
   DOUT2 : out std_logic;
   DOUT3 : out std_logic
 );
end component;
attribute black_box of ramd : component is true;
attribute black_box_tri_pins of ramd : component is "DOUT0,DOUT1,DOUT2,DOUT3";

component or4i4
 port (
   Q : out std_logic;
   AN : in std_logic;
   BN : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of or4i4 : component is true;
component or4i3
 port (
   Q : out std_logic;
   A : in std_logic;
   BN : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of or4i3 : component is true;
component or4i2
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of or4i2 : component is true;
component or4i1
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of or4i1 : component is true;
component or4
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   D : in std_logic
 );
end component;
attribute black_box of or4 : component is true;
component or3i3
 port (
   Q : out std_logic;
   AN : in std_logic;
   BN : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of or3i3 : component is true;
component or3i2
 port (
   Q : out std_logic;
   A : in std_logic;
   BN : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of or3i2 : component is true;
component or3i1
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of or3i1 : component is true;
component or3
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic
 );
end component;
attribute black_box of or3 : component is true;
component or2i2
 port (
   Q : out std_logic;
   AN : in std_logic;
   BN : in std_logic
 );
end component;
attribute black_box of or2i2 : component is true;
component or2i1
 port (
   Q : out std_logic;
   A : in std_logic;
   BN : in std_logic
 );
end component;
attribute black_box of or2i1 : component is true;
component or2
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic
 );
end component;
attribute black_box of or2 : component is true;
component one
 port (
   Q : out std_logic
 );
end component;
attribute black_box of one : component is true;
component obufos
 port (
   PAD : out std_logic;
   A : in std_logic
 );
end component;
attribute black_box of obufos : component is true;
component obufod
 port (
   PAD : out std_logic;
   A : in std_logic
 );
end component;
attribute black_box of obufod : component is true;
component obufe
 port (
   PAD : out std_logic;
   A : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of obufe : component is true;
attribute black_box_tri_pins of obufe: component is "PAD";

component obuf
 port (
   PAD : out std_logic;
   A : in std_logic
 );
end component;
attribute black_box of obuf : component is true;
component nr4i4
 port (
   QN : out std_logic;
   AN : in std_logic;
   BN : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of nr4i4 : component is true;
component nr4i3
 port (
   QN : out std_logic;
   A : in std_logic;
   BN : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of nr4i3 : component is true;
component nr4i2
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of nr4i2 : component is true;
component nr4i1
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of nr4i1 : component is true;
component nr4
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   D : in std_logic
 );
end component;
attribute black_box of nr4 : component is true;
component nr3i3
 port (
   QN : out std_logic;
   AN : in std_logic;
   BN : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of nr3i3 : component is true;
component nr3i2
 port (
   QN : out std_logic;
   A : in std_logic;
   BN : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of nr3i2 : component is true;
component nr3i1
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of nr3i1 : component is true;
component nr3
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic
 );
end component;
attribute black_box of nr3 : component is true;
component nr2i2
 port (
   QN : out std_logic;
   AN : in std_logic;
   BN : in std_logic
 );
end component;
attribute black_box of nr2i2 : component is true;
component nr2i1
 port (
   QN : out std_logic;
   A : in std_logic;
   BN : in std_logic
 );
end component;
attribute black_box of nr2i1 : component is true;
component nr2
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic
 );
end component;
attribute black_box of nr2 : component is true;
component nd4i4
 port (
   QN : out std_logic;
   AN : in std_logic;
   BN : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of nd4i4 : component is true;
component nd4i3
 port (
   QN : out std_logic;
   A : in std_logic;
   BN : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of nd4i3 : component is true;
component nd4i2
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of nd4i2 : component is true;
component nd4i1
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of nd4i1 : component is true;
component nd4
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   D : in std_logic
 );
end component;
attribute black_box of nd4 : component is true;
component nd3i3
 port (
   QN : out std_logic;
   AN : in std_logic;
   BN : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of nd3i3 : component is true;
component nd3i2
 port (
   QN : out std_logic;
   A : in std_logic;
   BN : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of nd3i2 : component is true;
component nd3i1
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of nd3i1 : component is true;
component nd3
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic
 );
end component;
attribute black_box of nd3 : component is true;
component nd2i2
 port (
   QN : out std_logic;
   AN : in std_logic;
   BN : in std_logic
 );
end component;
attribute black_box of nd2i2 : component is true;
component nd2i1
 port (
   QN : out std_logic;
   A : in std_logic;
   BN : in std_logic
 );
end component;
attribute black_box of nd2i1 : component is true;
component nd2
 port (
   QN : out std_logic;
   A : in std_logic;
   B : in std_logic
 );
end component;
attribute black_box of nd2 : component is true;
component mux3
 port (
   Q : out std_logic;
   D0 : in std_logic;
   D1 : in std_logic;
   D2 : in std_logic;
   S0 : in std_logic;
   S1 : in std_logic
 );
end component;
attribute black_box of mux3 : component is true;
component mux2
 port (
   Q : out std_logic;
   D1 : in std_logic;
   S : in std_logic;
   D0 : in std_logic
 );
end component;
attribute black_box of mux2 : component is true;
component muxfb
 port (
   O : out std_logic;
   S0 : in std_logic;
   S1 : in std_logic;
   S : in std_logic;
   FB : in std_logic
 );
end component;
attribute black_box of muxfb : component is true;
component mult
 port (
   PPO : out std_logic;
   COUT : out std_logic;
   A : in std_logic;
   B : in std_logic;
   PPI : in std_logic;
   CI : in std_logic
 );
end component;
attribute black_box of mult : component is true;
component lz
 port (
   Q : out std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of lz : component is true;
attribute black_box_tri_pins of  lz : component is "Q";
component ldsa
 port (
   D : in std_logic;
   G : in std_logic;
   SN : in std_logic;
   Q : out std_logic
 );
end component;
attribute black_box of ldsa : component is true;
component ldra
 port (
   D : in std_logic;
   G : in std_logic;
   RN : in std_logic;
   Q : out std_logic
 );
end component;
attribute black_box of ldra : component is true;
component lde
 port (
   D : in std_logic;
   G : in std_logic;
   E : in std_logic;
   Q : out std_logic
 );
end component;
attribute black_box of lde : component is true;
component ld
 port (
   D : in std_logic;
   G : in std_logic;
   Q : out std_logic
 );
end component;
attribute black_box of ld : component is true;
component inv
 port (
   QN : out std_logic;
   A : in std_logic
 );
end component;
attribute black_box of inv : component is true;
component ibuf
 port (
   Q : out std_logic;
   PAD : in std_logic
 );
end component;
attribute black_box of ibuf : component is true;
component hz
 port (
   Q : out std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of hz : component is true;
attribute black_box_tri_pins of hz : component is "Q";

component gclkbuf
 port (
   Q : out std_logic;
   PAD : in std_logic
 );
end component;
attribute black_box of gclkbuf : component is true;
component fjksa
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   SN : in std_logic
 );
end component;
attribute black_box of fjksa : component is true;
component fjkra
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic;
   RN : in std_logic
 );
end component;
attribute black_box of fjkra : component is true;
component fjk
 port (
   Q : out std_logic;
   J : in std_logic;
   K : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of fjk : component is true;
component fdsae
 port (
   Q : out std_logic;
   D : in std_logic;
   E : in std_logic;
   CLK : in std_logic;
   SN : in std_logic
 );
end component;
attribute black_box of fdsae : component is true;
component fdsa
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   SN : in std_logic
 );
end component;
attribute black_box of fdsa : component is true;
component fdrae
 port (
   Q : out std_logic;
   D : in std_logic;
   E : in std_logic;
   CLK : in std_logic;
   RN : in std_logic
 );
end component;
attribute black_box of fdrae : component is true;
component fdra
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic;
   RN : in std_logic
 );
end component;
attribute black_box of fdra : component is true;
component fde
 port (
   Q : out std_logic;
   D : in std_logic;
   E : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of fde : component is true;
component fd
 port (
   Q : out std_logic;
   D : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of fd : component is true;
component fclkbuf
 port (
   Q : out std_logic;
   PAD : in std_logic
 );
end component;
attribute black_box of fclkbuf : component is true;
component fa
 port (
   SUM : out std_logic;
   COUT : out std_logic;
   A : in std_logic;
   B : in std_logic;
   CI : in std_logic
 );
end component;
attribute black_box of fa : component is true;
component bufz
 port (
   Q : out std_logic;
   A : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of bufz : component is true;
attribute black_box_tri_pins of rams : component is "Q";
component bibufos

 port (
   Q : out std_logic;
   PAD : inout std_logic;
   A : in std_logic
 );
end component;
attribute black_box of bibufos : component is true;
attribute black_box_tri_pins of bibufos: component is "PAD";

component bibufod
 port (
   Q : out std_logic;
   PAD : inout std_logic;
   A : in std_logic
 );
end component;
attribute black_box of bibufod : component is true;
attribute black_box_tri_pins of bibufod: component is "PAD";
component bibuf
 port (
   Q : out std_logic;
   PAD : inout std_logic;
   A : in std_logic;
   OE : in std_logic
 );
end component;
attribute black_box of bibuf : component is true;
attribute black_box_tri_pins of bibuf: component is "PAD";

component an4i4
 port (
   Q : out std_logic;
   AN : in std_logic;
   BN : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of an4i4 : component is true;
component an4i3
 port (
   Q : out std_logic;
   A : in std_logic;
   BN : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of an4i3 : component is true;
component an4i2
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   CN : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of an4i2 : component is true;
component an4i1
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   DN : in std_logic
 );
end component;
attribute black_box of an4i1 : component is true;
component an4
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   D : in std_logic
 );
end component;
attribute black_box of an4 : component is true;
component an3i3
 port (
   Q : out std_logic;
   AN : in std_logic;
   BN : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of an3i3 : component is true;
component an3i2
 port (
   Q : out std_logic;
   A : in std_logic;
   BN : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of an3i2 : component is true;
component an3i1
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   CN : in std_logic
 );
end component;
attribute black_box of an3i1 : component is true;
component an3
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic;
   C : in std_logic
 );
end component;
attribute black_box of an3 : component is true;
component an2i2
 port (
   Q : out std_logic;
   AN : in std_logic;
   BN : in std_logic
 );
end component;
attribute black_box of an2i2 : component is true;
component an2i1
 port (
   Q : out std_logic;
   A : in std_logic;
   BN : in std_logic
 );
end component;
attribute black_box of an2i1 : component is true;
component an2
 port (
   Q : out std_logic;
   A : in std_logic;
   B : in std_logic
 );
end component;
attribute black_box of an2 : component is true;
end package components;
