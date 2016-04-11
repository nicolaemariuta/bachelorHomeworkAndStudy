library ieee;
use ieee.std_logic_1164.all;
library synplify;
use synplify.attributes.all;
entity LUT1 is
 generic (INIT : std_logic_vector(1 downto 0));
 port (
   O : out std_logic;
   I0 : in std_logic
 );
end entity LUT1;

architecture lut of LUT1 is
attribute xc_map of lut : architecture is "lut";
begin
O <= INIT(1) when I0 = '1' else INIT(0);
end architecture lut;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library synplify;
use synplify.attributes.all;
entity LUT2 is
 generic (INIT : std_logic_vector(3 downto 0));
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end entity LUT2;

architecture lut of LUT2 is
attribute xc_map of lut : architecture is "lut";
signal b : std_logic_vector(1 downto 0);
signal tmp : integer range 0 to 7;
begin
    b <= (I1, I0);
    tmp <= conv_integer(b);
    O <= INIT(tmp);
end architecture lut;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library synplify;
use synplify.attributes.all;
entity LUT3 is
 generic (INIT : std_logic_vector(7 downto 0));
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end entity LUT3;

architecture lut of LUT3 is
attribute xc_map of lut : architecture is "lut";
signal b : std_logic_vector(2 downto 0);
signal tmp : integer range 0 to 7;
begin
    b <= (I2, I1, I0);
    tmp <= conv_integer(b);
    O <= INIT(tmp);
end architecture lut;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library synplify;
use synplify.attributes.all;
entity LUT4 is
 generic (INIT : std_logic_vector(15 downto 0));
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end entity LUT4;

architecture lut of LUT4 is
attribute xc_map of lut : architecture is "lut";
signal b : std_logic_vector(3 downto 0);
signal tmp : integer range 0 to 15;
begin
    b <= (I3, I2, I1, I0);
    tmp <= conv_integer(b);
    O <= INIT(tmp);
end architecture lut;

library ieee;
use ieee.std_logic_1164.all;
library synplify;
use synplify.attributes.all;
package components is
   attribute black_box of components : package is true;
   attribute synthesis_noprune : boolean;
component BSCAN_VIRTEX
 port (
   TDO1 : in std_logic;
   TDO2 : in std_logic;
   TDI : out std_logic;
   RESET : out std_logic;
   SHIFT : out std_logic;
   UPDATE : out std_logic;
   SEL1 : out std_logic;
   DRCK1 : out std_logic;
   SEL2 : out std_logic;
   DRCK2 : out std_logic
 );
end component;
attribute black_box of BSCAN_VIRTEX : component is true;
component BUF
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of BUF : component is true;
component BUFCF
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of BUFCF : component is true;
component BUFE
 port (
   O : out std_logic;
   I : in std_logic;
   E : in std_logic
 );
end component;
attribute black_box of BUFE : component is true;
attribute black_box_tri_pins of BUFE : component is "O";
component BUFG
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of BUFG : component is true;
component BUFGDLL
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of BUFGDLL : component is true;
component BUFGIO
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of BUFGIO : component is true;
component BUFGP
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of BUFGP : component is true;
component BUFT
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of BUFT : component is true;
attribute black_box_tri_pins of BUFT : component is "O";
component CAPTURE_VIRTEX
 port (
   CAP : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of CAPTURE_VIRTEX : component is true;
attribute synthesis_noprune of CAPTURE_VIRTEX : component is true;
component CLKDLL
 port (
   CLK0 : out std_logic;
   CLK90 : out std_logic;
   CLK180 : out std_logic;
   CLK270 : out std_logic;
   CLK2X : out std_logic;
   CLKDV : out std_logic;
   LOCKED : out std_logic;
   CLKIN : in std_logic;
   CLKFB : in std_logic;
   RST : in std_logic
 );
end component;
attribute black_box of CLKDLL : component is true;
component CLKDLLHF
 port (
   CLK0 : out std_logic;
   CLK180 : out std_logic;
   CLKDV : out std_logic;
   LOCKED : out std_logic;
   CLKIN : in std_logic;
   CLKFB : in std_logic;
   RST : in std_logic
 );
end component;
attribute black_box of CLKDLLHF : component is true;
component FD
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic
 );
end component;
attribute black_box of FD : component is true;
component FDC
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CLR : in std_logic
 );
end component;
attribute black_box of FDC : component is true;
component FDCE
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   CLR : in std_logic
 );
end component;
attribute black_box of FDCE : component is true;
component FDCE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   CLR : in std_logic
 );
end component;
attribute black_box of FDCE_1 : component is true;
component FDCP
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CLR : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of FDCP : component is true;
component FDCPE
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   CLR : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of FDCPE : component is true;
component FDCPE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   CLR : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of FDCPE_1 : component is true;
component FDCP_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CLR : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of FDCP_1 : component is true;
component FDC_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CLR : in std_logic
 );
end component;
attribute black_box of FDC_1 : component is true;
component FDE
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic
 );
end component;
attribute black_box of FDE : component is true;
component FDE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic
 );
end component;
attribute black_box of FDE_1 : component is true;
component FDP
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of FDP : component is true;
component FDPE
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of FDPE : component is true;
component FDPE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of FDPE_1 : component is true;
component FDP_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of FDP_1 : component is true;
component FDR
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of FDR : component is true;
component FDRE
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of FDRE : component is true;
component FDRE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of FDRE_1 : component is true;
component FDRS
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of FDRS : component is true;
component FDRSE
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of FDRSE : component is true;
component FDRSE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of FDRSE_1 : component is true;
component FDRS_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   R : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of FDRS_1 : component is true;
component FDR_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   R : in std_logic
 );
end component;
attribute black_box of FDR_1 : component is true;
component FDS
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of FDS : component is true;
component FDSE
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of FDSE : component is true;
component FDSE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   CE : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of FDSE_1 : component is true;
component FDS_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of FDS_1 : component is true;
component FD_1
 port (
   Q : out std_logic;
   D : in std_logic;
   C : in std_logic
 );
end component;
attribute black_box of FD_1 : component is true;
component GND
 port (
   G : out std_logic
 );
end component;
attribute black_box of GND : component is true;
component IBUF
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF : component is true;
component IBUFG
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG : component is true;
attribute black_box_pad_pin of IBUFG : component is "I";
component IBUFG_AGP
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_AGP : component is true;
component IBUFG_CTT
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_CTT : component is true;
component IBUFG_GTL
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_GTL : component is true;
component IBUFG_GTLP
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_GTLP : component is true;
component IBUFG_HSTL_I
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_HSTL_I : component is true;
component IBUFG_HSTL_III
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_HSTL_III : component is true;
component IBUFG_HSTL_IV
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_HSTL_IV : component is true;
component IBUFG_LVCMOS2
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_LVCMOS2 : component is true;
component IBUFG_PCI33_3
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_PCI33_3 : component is true;
component IBUFG_PCI33_5
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_PCI33_5 : component is true;
component IBUFG_PCI66_3
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_PCI66_3 : component is true;
component IBUFG_SSTL2_I
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_SSTL2_I : component is true;
component IBUFG_SSTL2_II
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_SSTL2_II : component is true;
component IBUFG_SSTL3_I
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_SSTL3_I : component is true;
component IBUFG_SSTL3_II
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUFG_SSTL3_II : component is true;
component IBUF_AGP
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_AGP : component is true;
component IBUF_CTT
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_CTT : component is true;
component IBUF_GTL
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_GTL : component is true;
component IBUF_GTLP
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_GTLP : component is true;
component IBUF_HSTL_I
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_HSTL_I : component is true;
component IBUF_HSTL_III
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_HSTL_III : component is true;
component IBUF_HSTL_IV
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_HSTL_IV : component is true;
component IBUF_LVCMOS2
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_LVCMOS2 : component is true;
component IBUF_PCI33_3
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_PCI33_3 : component is true;
component IBUF_PCI33_5
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_PCI33_5 : component is true;
component IBUF_PCI66_3
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_PCI66_3 : component is true;
component IBUF_SSTL2_I
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_SSTL2_I : component is true;
component IBUF_SSTL2_II
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_SSTL2_II : component is true;
component IBUF_SSTL3_I
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_SSTL3_I : component is true;
component IBUF_SSTL3_II
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of IBUF_SSTL3_II : component is true;
component INV
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of INV : component is true;
component IOBUF
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF : component is true;
component IOBUF_AGP
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_AGP : component is true;
component IOBUF_CTT
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_CTT : component is true;
component IOBUF_F_12
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_F_12 : component is true;
component IOBUF_F_16
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_F_16 : component is true;
component IOBUF_F_2
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_F_2 : component is true;
component IOBUF_F_24
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_F_24 : component is true;
component IOBUF_F_4
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_F_4 : component is true;
component IOBUF_F_6
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_F_6 : component is true;
component IOBUF_F_8
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_F_8 : component is true;
component IOBUF_GTL
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_GTL : component is true;
component IOBUF_GTLP
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_GTLP : component is true;
component IOBUF_HSTL_I
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_HSTL_I : component is true;
component IOBUF_HSTL_III
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_HSTL_III : component is true;
component IOBUF_HSTL_IV
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_HSTL_IV : component is true;
component IOBUF_LVCMOS2
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_LVCMOS2 : component is true;
component IOBUF_PCI33_3
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_PCI33_3 : component is true;
component IOBUF_PCI33_5
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_PCI33_5 : component is true;
component IOBUF_PCI66_3
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_PCI66_3 : component is true;
component IOBUF_SSTL2_I
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_SSTL2_I : component is true;
component IOBUF_SSTL2_II
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_SSTL2_II : component is true;
component IOBUF_SSTL3_I
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_SSTL3_I : component is true;
component IOBUF_SSTL3_II
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_SSTL3_II : component is true;
component IOBUF_S_12
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_S_12 : component is true;
component IOBUF_S_16
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_S_16 : component is true;
component IOBUF_S_2
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_S_2 : component is true;
component IOBUF_S_24
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_S_24 : component is true;
component IOBUF_S_4
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_S_4 : component is true;
component IOBUF_S_6
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_S_6 : component is true;
component IOBUF_S_8
 port (
   O : out std_logic;
   IO : inout std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of IOBUF_S_8 : component is true;
component KEEPER
 port (
   O : inout std_logic
 );
end component;
attribute black_box of KEEPER : component is true;
component LD
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic
 );
end component;
attribute black_box of LD : component is true;
component LDC
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   CLR : in std_logic
 );
end component;
attribute black_box of LDC : component is true;
component LDCE
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   GE : in std_logic;
   CLR : in std_logic
 );
end component;
attribute black_box of LDCE : component is true;
component LDCE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   GE : in std_logic;
   CLR : in std_logic
 );
end component;
attribute black_box of LDCE_1 : component is true;
component LDCP
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   CLR : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of LDCP : component is true;
component LDCPE
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   GE : in std_logic;
   CLR : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of LDCPE : component is true;
component LDCPE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   GE : in std_logic;
   CLR : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of LDCPE_1 : component is true;
component LDCP_1
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   CLR : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of LDCP_1 : component is true;
component LDC_1
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   CLR : in std_logic
 );
end component;
attribute black_box of LDC_1 : component is true;
component LDE
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   GE : in std_logic
 );
end component;
attribute black_box of LDE : component is true;
component LDE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   GE : in std_logic
 );
end component;
attribute black_box of LDE_1 : component is true;
component LDP
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of LDP : component is true;
component LDPE
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   GE : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of LDPE : component is true;
component LDPE_1
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   GE : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of LDPE_1 : component is true;
component LDP_1
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic;
   PRE : in std_logic
 );
end component;
attribute black_box of LDP_1 : component is true;
component LD_1
 port (
   Q : out std_logic;
   D : in std_logic;
   G : in std_logic
 );
end component;
attribute black_box of LD_1 : component is true;
component LUT1
 generic (INIT : std_logic_vector);
 port (
   O : out std_logic;
   I0 : in std_logic
 );
end component;
attribute black_box of LUT1 : component is true;
component LUT1_D
 generic (INIT : std_logic_vector);
 port (
   O : out std_logic;
   LO : out std_logic;
   I0 : in std_logic
 );
end component;
attribute black_box of LUT1_D : component is true;
component LUT1_L
 generic (INIT : std_logic_vector);
 port (
   LO : out std_logic;
   I0 : in std_logic
 );
end component;
attribute black_box of LUT1_L : component is true;
component LUT2
 generic (INIT : std_logic_vector);
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of LUT2 : component is true;
component LUT2_D
 generic (INIT : std_logic_vector);
 port (
   O : out std_logic;
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of LUT2_D : component is true;
component LUT2_L
 generic (INIT : std_logic_vector);
 port (
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of LUT2_L : component is true;
component LUT3
 generic (INIT : std_logic_vector);
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of LUT3 : component is true;
component LUT3_D
 generic (INIT : std_logic_vector);
 port (
   O : out std_logic;
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of LUT3_D : component is true;
component LUT3_L
 generic (INIT : std_logic_vector);
 port (
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic
 );
end component;
attribute black_box of LUT3_L : component is true;
component LUT4
 generic (INIT : std_logic_vector);
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end component;
attribute black_box of LUT4 : component is true;
component LUT4_D
 generic (INIT : std_logic_vector);
 port (
   O : out std_logic;
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end component;
attribute black_box of LUT4_D : component is true;
component LUT4_L
 generic (INIT : std_logic_vector);
 port (
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   I2 : in std_logic;
   I3 : in std_logic
 );
end component;
attribute black_box of LUT4_L : component is true;
component MULT_AND
 port (
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic
 );
end component;
attribute black_box of MULT_AND : component is true;
component MUXCY
 port (
   O : out std_logic;
   CI : in std_logic;
   DI : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of MUXCY : component is true;
component MUXCY_D
 port (
   O : out std_logic;
   LO : out std_logic;
   CI : in std_logic;
   DI : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of MUXCY_D : component is true;
component MUXCY_L
 port (
   LO : out std_logic;
   CI : in std_logic;
   DI : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of MUXCY_L : component is true;
component MUXF5
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of MUXF5 : component is true;
component MUXF5_D
 port (
   O : out std_logic;
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of MUXF5_D : component is true;
component MUXF5_L
 port (
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of MUXF5_L : component is true;
component MUXF6
 port (
   O : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of MUXF6 : component is true;
component MUXF6_D
 port (
   O : out std_logic;
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of MUXF6_D : component is true;
component MUXF6_L
 port (
   LO : out std_logic;
   I0 : in std_logic;
   I1 : in std_logic;
   S : in std_logic
 );
end component;
attribute black_box of MUXF6_L : component is true;
component OBUF
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF : component is true;
component OBUFT
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT : component is true;
attribute black_box_tri_pins of OBUFT : component is "O";
component OBUFT_AGP
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_AGP : component is true;
attribute black_box_tri_pins of OBUFT_AGP : component is "O";
component OBUFT_CTT
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_CTT : component is true;
attribute black_box_tri_pins of OBUFT_CTT : component is "O";
component OBUFT_F_12
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_F_12 : component is true;
attribute black_box_tri_pins of OBUFT_F_12 : component is "O";
component OBUFT_F_16
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_F_16 : component is true;
attribute black_box_tri_pins of OBUFT_F_16 : component is "O";
component OBUFT_F_2
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_F_2 : component is true;
attribute black_box_tri_pins of OBUFT_F_2 : component is "O";
component OBUFT_F_24
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_F_24 : component is true;
attribute black_box_tri_pins of OBUFT_F_24 : component is "O";
component OBUFT_F_4
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_F_4 : component is true;
attribute black_box_tri_pins of OBUFT_F_4 : component is "O";
component OBUFT_F_6
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_F_6 : component is true;
attribute black_box_tri_pins of OBUFT_F_6 : component is "O";
component OBUFT_F_8
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_F_8 : component is true;
attribute black_box_tri_pins of OBUFT_F_8 : component is "O";
component OBUFT_GTL
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_GTL : component is true;
attribute black_box_tri_pins of OBUFT_GTL : component is "O";
component OBUFT_GTLP
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_GTLP : component is true;
attribute black_box_tri_pins of OBUFT_GTLP : component is "O";
component OBUFT_HSTL_I
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_HSTL_I : component is true;
attribute black_box_tri_pins of OBUFT_HSTL_I : component is "O";
component OBUFT_HSTL_III
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_HSTL_III : component is true;
attribute black_box_tri_pins of OBUFT_HSTL_III : component is "O";
component OBUFT_HSTL_IV
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_HSTL_IV : component is true;
attribute black_box_tri_pins of OBUFT_HSTL_IV : component is "O";
component OBUFT_LVCMOS2
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_LVCMOS2 : component is true;
attribute black_box_tri_pins of OBUFT_LVCMOS2 : component is "O";
component OBUFT_PCI33_3
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_PCI33_3 : component is true;
attribute black_box_tri_pins of OBUFT_PCI33_3 : component is "O";
component OBUFT_PCI33_5
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_PCI33_5 : component is true;
attribute black_box_tri_pins of OBUFT_PCI33_5 : component is "O";
component OBUFT_PCI66_3
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_PCI66_3 : component is true;
attribute black_box_tri_pins of OBUFT_PCI66_3 : component is "O";
component OBUFT_SSTL2_I
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_SSTL2_I : component is true;
attribute black_box_tri_pins of OBUFT_SSTL2_I : component is "O";
component OBUFT_SSTL2_II
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_SSTL2_II : component is true;
attribute black_box_tri_pins of OBUFT_SSTL2_II : component is "O";
component OBUFT_SSTL3_I
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_SSTL3_I : component is true;
attribute black_box_tri_pins of OBUFT_SSTL3_I : component is "O";
component OBUFT_SSTL3_II
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_SSTL3_II : component is true;
attribute black_box_tri_pins of OBUFT_SSTL3_II : component is "O";
component OBUFT_S_12
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_S_12 : component is true;
attribute black_box_tri_pins of OBUFT_S_12 : component is "O";
component OBUFT_S_16
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_S_16 : component is true;
attribute black_box_tri_pins of OBUFT_S_16 : component is "O";
component OBUFT_S_2
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_S_2 : component is true;
attribute black_box_tri_pins of OBUFT_S_2 : component is "O";
component OBUFT_S_24
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_S_24 : component is true;
attribute black_box_tri_pins of OBUFT_S_24 : component is "O";
component OBUFT_S_4
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_S_4 : component is true;
attribute black_box_tri_pins of OBUFT_S_4 : component is "O";
component OBUFT_S_6
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_S_6 : component is true;
attribute black_box_tri_pins of OBUFT_S_6 : component is "O";
component OBUFT_S_8
 port (
   O : out std_logic;
   I : in std_logic;
   T : in std_logic
 );
end component;
attribute black_box of OBUFT_S_8 : component is true;
attribute black_box_tri_pins of OBUFT_S_8 : component is "O";
component OBUF_AGP
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_AGP : component is true;
component OBUF_CTT
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_CTT : component is true;
component OBUF_F_12
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_F_12 : component is true;
component OBUF_F_16
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_F_16 : component is true;
component OBUF_F_2
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_F_2 : component is true;
component OBUF_F_24
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_F_24 : component is true;
component OBUF_F_4
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_F_4 : component is true;
component OBUF_F_6
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_F_6 : component is true;
component OBUF_F_8
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_F_8 : component is true;
component OBUF_GTL
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_GTL : component is true;
component OBUF_GTLP
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_GTLP : component is true;
component OBUF_HSTL_I
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_HSTL_I : component is true;
component OBUF_HSTL_III
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_HSTL_III : component is true;
component OBUF_HSTL_IV
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_HSTL_IV : component is true;
component OBUF_LVCMOS2
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_LVCMOS2 : component is true;
component OBUF_PCI33_3
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_PCI33_3 : component is true;
component OBUF_PCI33_5
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_PCI33_5 : component is true;
component OBUF_PCI66_3
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_PCI66_3 : component is true;
component OBUF_SSTL2_I
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_SSTL2_I : component is true;
component OBUF_SSTL2_II
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_SSTL2_II : component is true;
component OBUF_SSTL3_I
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_SSTL3_I : component is true;
component OBUF_SSTL3_II
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_SSTL3_II : component is true;
component OBUF_S_12
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_S_12 : component is true;
component OBUF_S_16
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_S_16 : component is true;
component OBUF_S_2
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_S_2 : component is true;
component OBUF_S_24
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_S_24 : component is true;
component OBUF_S_4
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_S_4 : component is true;
component OBUF_S_6
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_S_6 : component is true;
component OBUF_S_8
 port (
   O : out std_logic;
   I : in std_logic
 );
end component;
attribute black_box of OBUF_S_8 : component is true;
component PULLDOWN
 port (
   O : out std_logic
 );
end component;
attribute black_box of PULLDOWN : component is true;
attribute black_box_tri_pins of PULLDOWN : component is "O";
component PULLUP
 port (
   O : out std_logic
 );
end component;
attribute black_box of PULLUP : component is true;
attribute black_box_tri_pins of PULLUP : component is "O";
component RAM16X1D
 port (
   DPO : out std_logic;
   SPO : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   D : in std_logic;
   DPRA0 : in std_logic;
   DPRA1 : in std_logic;
   DPRA2 : in std_logic;
   DPRA3 : in std_logic;
   WCLK : in std_logic;
   WE : in std_logic
 );
end component;
attribute black_box of RAM16X1D : component is true;
component RAM16X1D_1
 port (
   DPO : out std_logic;
   SPO : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   D : in std_logic;
   DPRA0 : in std_logic;
   DPRA1 : in std_logic;
   DPRA2 : in std_logic;
   DPRA3 : in std_logic;
   WCLK : in std_logic;
   WE : in std_logic
 );
end component;
attribute black_box of RAM16X1D_1 : component is true;
component RAM16X1S
 port (
   O : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   D : in std_logic;
   WCLK : in std_logic;
   WE : in std_logic
 );
end component;
attribute black_box of RAM16X1S : component is true;
component RAM16X1S_1
 port (
   O : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   D : in std_logic;
   WCLK : in std_logic;
   WE : in std_logic
 );
end component;
attribute black_box of RAM16X1S_1 : component is true;
component RAM32X1S
 port (
   O : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   A4 : in std_logic;
   D : in std_logic;
   WCLK : in std_logic;
   WE : in std_logic
 );
end component;
attribute black_box of RAM32X1S : component is true;
component RAM32X1S_1
 port (
   O : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   A4 : in std_logic;
   D : in std_logic;
   WCLK : in std_logic;
   WE : in std_logic
 );
end component;
attribute black_box of RAM32X1S_1 : component is true;
component RAMB4_S1
 port (
   DO : out std_logic_vector (0 downto 0);
   ADDR : in std_logic_vector (11 downto 0);
   DI : in std_logic_vector (0 downto 0);
   EN : in std_logic;
   CLK : in std_logic;
   WE : in std_logic;
   RST : in std_logic
 );
end component;
attribute black_box of RAMB4_S1 : component is true;
component RAMB4_S16
 port (
   DO : out std_logic_vector (15 downto 0);
   ADDR : in std_logic_vector (7 downto 0);
   DI : in std_logic_vector (15 downto 0);
   EN : in std_logic;
   CLK : in std_logic;
   WE : in std_logic;
   RST : in std_logic
 );
end component;
attribute black_box of RAMB4_S16 : component is true;
component RAMB4_S16_S16
 port (
   DOA : out std_logic_vector (15 downto 0);
   DOB : out std_logic_vector (15 downto 0);
   ADDRA : in std_logic_vector (7 downto 0);
   DIA : in std_logic_vector (15 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (7 downto 0);
   DIB : in std_logic_vector (15 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S16_S16 : component is true;
component RAMB4_S1_S1
 port (
   DOA : out std_logic_vector (0 downto 0);
   DOB : out std_logic_vector (0 downto 0);
   ADDRA : in std_logic_vector (11 downto 0);
   DIA : in std_logic_vector (0 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (11 downto 0);
   DIB : in std_logic_vector (0 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S1_S1 : component is true;
component RAMB4_S1_S16
 port (
   DOA : out std_logic_vector (0 downto 0);
   DOB : out std_logic_vector (15 downto 0);
   ADDRA : in std_logic_vector (11 downto 0);
   DIA : in std_logic_vector (0 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (7 downto 0);
   DIB : in std_logic_vector (15 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S1_S16 : component is true;
component RAMB4_S1_S2
 port (
   DOA : out std_logic_vector (0 downto 0);
   DOB : out std_logic_vector (1 downto 0);
   ADDRA : in std_logic_vector (11 downto 0);
   DIA : in std_logic_vector (0 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (10 downto 0);
   DIB : in std_logic_vector (1 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S1_S2 : component is true;
component RAMB4_S1_S4
 port (
   DOA : out std_logic_vector (0 downto 0);
   DOB : out std_logic_vector (3 downto 0);
   ADDRA : in std_logic_vector (11 downto 0);
   DIA : in std_logic_vector (0 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (9 downto 0);
   DIB : in std_logic_vector (3 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S1_S4 : component is true;
component RAMB4_S1_S8
 port (
   DOA : out std_logic_vector (0 downto 0);
   DOB : out std_logic_vector (7 downto 0);
   ADDRA : in std_logic_vector (11 downto 0);
   DIA : in std_logic_vector (0 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (8 downto 0);
   DIB : in std_logic_vector (7 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S1_S8 : component is true;
component RAMB4_S2
 port (
   DO : out std_logic_vector (1 downto 0);
   ADDR : in std_logic_vector (10 downto 0);
   DI : in std_logic_vector (1 downto 0);
   EN : in std_logic;
   CLK : in std_logic;
   WE : in std_logic;
   RST : in std_logic
 );
end component;
attribute black_box of RAMB4_S2 : component is true;
component RAMB4_S2_S16
 port (
   DOA : out std_logic_vector (1 downto 0);
   DOB : out std_logic_vector (15 downto 0);
   ADDRA : in std_logic_vector (10 downto 0);
   DIA : in std_logic_vector (1 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (7 downto 0);
   DIB : in std_logic_vector (15 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S2_S16 : component is true;
component RAMB4_S2_S2
 port (
   DOA : out std_logic_vector (1 downto 0);
   DOB : out std_logic_vector (1 downto 0);
   ADDRA : in std_logic_vector (10 downto 0);
   DIA : in std_logic_vector (1 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (10 downto 0);
   DIB : in std_logic_vector (1 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S2_S2 : component is true;
component RAMB4_S2_S4
 port (
   DOA : out std_logic_vector (1 downto 0);
   DOB : out std_logic_vector (3 downto 0);
   ADDRA : in std_logic_vector (10 downto 0);
   DIA : in std_logic_vector (1 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (9 downto 0);
   DIB : in std_logic_vector (3 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S2_S4 : component is true;
component RAMB4_S2_S8
 port (
   DOA : out std_logic_vector (1 downto 0);
   DOB : out std_logic_vector (7 downto 0);
   ADDRA : in std_logic_vector (10 downto 0);
   DIA : in std_logic_vector (1 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (8 downto 0);
   DIB : in std_logic_vector (7 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S2_S8 : component is true;
component RAMB4_S4
 port (
   DO : out std_logic_vector (3 downto 0);
   ADDR : in std_logic_vector (9 downto 0);
   DI : in std_logic_vector (3 downto 0);
   EN : in std_logic;
   CLK : in std_logic;
   WE : in std_logic;
   RST : in std_logic
 );
end component;
attribute black_box of RAMB4_S4 : component is true;
component RAMB4_S4_S16
 port (
   DOA : out std_logic_vector (3 downto 0);
   DOB : out std_logic_vector (15 downto 0);
   ADDRA : in std_logic_vector (9 downto 0);
   DIA : in std_logic_vector (3 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (7 downto 0);
   DIB : in std_logic_vector (15 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S4_S16 : component is true;
component RAMB4_S4_S4
 port (
   DOA : out std_logic_vector (3 downto 0);
   DOB : out std_logic_vector (3 downto 0);
   ADDRA : in std_logic_vector (9 downto 0);
   DIA : in std_logic_vector (3 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (9 downto 0);
   DIB : in std_logic_vector (3 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S4_S4 : component is true;
component RAMB4_S4_S8
 port (
   DOA : out std_logic_vector (3 downto 0);
   DOB : out std_logic_vector (7 downto 0);
   ADDRA : in std_logic_vector (9 downto 0);
   DIA : in std_logic_vector (3 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (8 downto 0);
   DIB : in std_logic_vector (7 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S4_S8 : component is true;
component RAMB4_S8
 port (
   DO : out std_logic_vector (7 downto 0);
   ADDR : in std_logic_vector (8 downto 0);
   DI : in std_logic_vector (7 downto 0);
   EN : in std_logic;
   CLK : in std_logic;
   WE : in std_logic;
   RST : in std_logic
 );
end component;
attribute black_box of RAMB4_S8 : component is true;
component RAMB4_S8_S16
 port (
   DOA : out std_logic_vector (7 downto 0);
   DOB : out std_logic_vector (15 downto 0);
   ADDRA : in std_logic_vector (8 downto 0);
   DIA : in std_logic_vector (7 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (7 downto 0);
   DIB : in std_logic_vector (15 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S8_S16 : component is true;
component RAMB4_S8_S8
 port (
   DOA : out std_logic_vector (7 downto 0);
   DOB : out std_logic_vector (7 downto 0);
   ADDRA : in std_logic_vector (8 downto 0);
   DIA : in std_logic_vector (7 downto 0);
   ENA : in std_logic;
   CLKA : in std_logic;
   WEA : in std_logic;
   RSTA : in std_logic;
   ADDRB : in std_logic_vector (8 downto 0);
   DIB : in std_logic_vector (7 downto 0);
   ENB : in std_logic;
   CLKB : in std_logic;
   WEB : in std_logic;
   RSTB : in std_logic
 );
end component;
attribute black_box of RAMB4_S8_S8 : component is true;
component SRL16
 port (
   Q : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   D : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of SRL16 : component is true;
component SRL16E
 port (
   Q : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic
 );
end component;
attribute black_box of SRL16E : component is true;
component SRL16E_1
 port (
   Q : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   D : in std_logic;
   CLK : in std_logic;
   CE : in std_logic
 );
end component;
attribute black_box of SRL16E_1 : component is true;
component SRL16_1
 port (
   Q : out std_logic;
   A0 : in std_logic;
   A1 : in std_logic;
   A2 : in std_logic;
   A3 : in std_logic;
   D : in std_logic;
   CLK : in std_logic
 );
end component;
attribute black_box of SRL16_1 : component is true;
component STARTBUF_VIRTEX
    port( GSRIN     : in std_ulogic;
          GTSIN     : in std_ulogic;
          CLKIN     : in std_ulogic;
          GTSOUT    : out std_ulogic);
end component;
attribute black_box of STARTBUF_VIRTEX : component is true;

component STARTUP_VIRTEX
   port( GSR, GTS, CLK: in std_logic);
end component;

component STARTUP_VIRTEX_GTS
   port(GTS: in std_logic);
end component;
attribute black_box of STARTUP_VIRTEX_GTS : component is true;
attribute synthesis_noprune of STARTUP_VIRTEX_GTS: component is true;
attribute xc_alias of STARTUP_VIRTEX_GTS : component is "STARTUP_VIRTEX";

component STARTUP_VIRTEX_GSR
   port(GSR: in std_logic);
end component;
attribute black_box of STARTUP_VIRTEX_GSR : component is true;
attribute synthesis_noprune of STARTUP_VIRTEX_GSR: component is true;
attribute xc_alias of STARTUP_VIRTEX_GSR : component is "STARTUP_VIRTEX";

component STARTUP_VIRTEX_CLK
   port( CLK: in std_logic);
end component;
attribute black_box of STARTUP_VIRTEX_CLK : component is true;
attribute synthesis_noprune of STARTUP_VIRTEX_CLK: component is true;
attribute xc_alias of STARTUP_VIRTEX_CLK: component is "STARTUP_VIRTEX";

component STARTUP_VIRTEX_ALL
   port(GSR,GTS,CLK: in std_logic);
end component;
attribute synthesis_noprune of STARTUP_VIRTEX_ALL: component is true;
attribute xc_alias of STARTUP_VIRTEX_ALL: component is "STARTUP_VIRTEX";

component TOC
 port (
   O : out std_logic := '0'
);
end component;
attribute black_box of TOC : component is true;
attribute synthesis_noprune of TOC : component is true;
component TOCBUF
 port (
   O : out std_logic := '0';
   I : in std_logic
);
end component;
attribute black_box of TOCBUF : component is true;
component VCC
 port (
   P : out std_logic
 );
end component;
attribute black_box of VCC : component is true;
attribute synthesis_noprune of VCC : component is true;
component XORCY
 port (
   O : out std_logic;
   CI : in std_logic;
   LI : in std_logic
 );
end component;
attribute black_box of XORCY : component is true;
component XORCY_D
 port (
   O : out std_logic;
   LO : out std_logic;
   CI : in std_logic;
   LI : in std_logic
 );
end component;
attribute black_box of XORCY_D : component is true;
component XORCY_L
 port (
   LO : out std_logic;
   CI : in std_logic;
   LI : in std_logic
 );
end component;
attribute black_box of XORCY_L : component is true;
end package components;

library IEEE;
use IEEE.std_logic_1164.all;
library virtex;
use virtex.components.all;
entity STARTUP_VIRTEX is
   port(GSR, GTS, CLK: in std_logic := '0');
end STARTUP_VIRTEX;

architecture struct of STARTUP_VIRTEX is
attribute synthesis_noprune of struct : architecture is true;
begin
  gsr : STARTUP_VIRTEX_GSR port map ( GSR => GSR );
  gts : STARTUP_VIRTEX_GTS port map ( GTS => GTS );
  clk : STARTUP_VIRTEX_CLK port map ( CLK => CLK);
end struct;
