--
--  Copyright (c) 1998 Synplicity, Inc.
--  All rights reserved.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library synplify;
use synplify.attributes.all;
entity synplicity_altdpram_out is
   generic (WIDTH: positive;
            LPM_TYPE: string;
            WIDTHAD: positive;
            NUMWORDS: positive;
            WRADDRESS_REG: string := "INCLOCK";
            WRADDRESS_ACLR: string := "OFF";
            WRCONTROL_REG: string := "INCLOCK";
            WRCONTROL_ACLR: string := "OFF";
            RDADDRESS_REG: string := "UNREGISTERED";
            RDADDRESS_ACLR: string := "OFF";
            RDCONTROL_REG: string := "UNREGISTERED";
            RDCONTROL_ACLR: string := "OFF";
            INDATA_REG: string := "INCLOCK";
            INDATA_ACLR: string := "OFF";
            OUTDATA_REG: string := "OUTCLOCK";
            OUTDATA_ACLR: string := "OFF";
            USE_EAB: string := "UNUSED");
   port (data: in std_logic_vector(WIDTH-1 downto 0);
         rdaddress: in std_logic_vector(WIDTHAD-1 downto 0);
         wraddress: in std_logic_vector(WIDTHAD-1 downto 0);
         wren: in std_logic;
         rden: in std_logic;
         inclock: in std_logic;
         inclocken : in std_logic;
         outclock: in std_logic;
         outclocken : in std_logic;
         q: out std_logic_vector(WIDTH-1 downto 0));
attribute syn_isclock : boolean;
attribute syn_isclock of inclock : signal is true;
attribute syn_isclock of outclock : signal is true;
end entity synplicity_altdpram_out;
architecture bb of synplicity_altdpram_out is
attribute syn_white_box : boolean;
attribute syn_white_box of bb : architecture is true;
--Estimated timing data for -3 speed grade
--Degradation factor ~ 1.25 to estimate timing for a -4 speed grade
attribute syn_scaletiming : string;
attribute syn_scaletiming of bb : architecture is "eab_scale";
attribute syn_tsu1 : string;
attribute syn_tsu2 : string;
attribute syn_tsu3 : string;
attribute syn_tsu4 : string;
attribute syn_tco1 : string;
attribute syn_tsu1 of bb : architecture is "data[*]->inclock=5.3";
attribute syn_tsu2 of bb : architecture is "raddress[*]->outclock=13.7";
attribute syn_tsu3 of bb : architecture is "waddress[*]->inclock=5.3";
attribute syn_tsu4 of bb : architecture is "we->inclock=5.5";
attribute syn_tco1 of bb : architecture is "outclock->q[*]=2.0";
attribute \WIDTH\ : POSITIVE;
attribute \WIDTH\ of all : architecture is WIDTH;
attribute \LPM_TYPE\ : STRING;
attribute \LPM_TYPE\ of all : architecture is LPM_TYPE;
attribute \WIDTHAD\ : POSITIVE;
attribute \WIDTHAD\ of all : architecture is WIDTHAD;
attribute \NUMWORDS\ : POSITIVE;
attribute \NUMWORDS\ of all : architecture is NUMWORDS;
attribute \FILE\ : STRING;
attribute \FILE\ of all : architecture is "UNUSED";
attribute \WRADDRESS_REG\ : STRING;
attribute \WRADDRESS_REG\ of all : architecture is WRADDRESS_REG;
attribute \WRADDRESS_ACLR\ : STRING;
attribute \WRADDRESS_ACLR\ of all : architecture is WRADDRESS_ACLR;
attribute \WRCONTROL_REG\ : STRING;
attribute \WRCONTROL_REG\ of all : architecture is WRCONTROL_REG;
attribute \WRCONTROL_ACLR\ : STRING;
attribute \WRCONTROL_ACLR\ of all : architecture is WRCONTROL_ACLR;
attribute \RDADDRESS_REG\ : STRING;
attribute \RDADDRESS_REG\ of all : architecture is RDADDRESS_REG;
attribute \RDADDRESS_ACLR\ : STRING;
attribute \RDADDRESS_ACLR\ of all : architecture is RDADDRESS_ACLR;
attribute \RDCONTROL_REG\ : STRING;
attribute \RDCONTROL_REG\ of all : architecture is RDCONTROL_REG;
attribute \RDCONTROL_ACLR\ : STRING;
attribute \RDCONTROL_ACLR\ of all : architecture is RDCONTROL_ACLR;
attribute \INDATA_REG\ : STRING;
attribute \INDATA_REG\ of all : architecture is INDATA_REG;
attribute \INDATA_ACLR\ : STRING;
attribute \INDATA_ACLR\ of all : architecture is INDATA_ACLR;
attribute \OUTDATA_REG\ : STRING;
attribute \OUTDATA_REG\ of all : architecture is OUTDATA_REG;
attribute \OUTDATA_ACLR\ : STRING;
attribute \OUTDATA_ACLR\ of all : architecture is OUTDATA_ACLR;
attribute \USE_EAB\ : STRING;
attribute \USE_EAB\ of all : architecture is USE_EAB;
attribute altera_area : integer;
attribute altera_area of all : architecture is 0;
type mem_type is array ((2**WIDTHAD)-1 downto 0) of std_logic_vector (WIDTH-1 downto 0);
signal MEM: mem_type;
begin
    process (inclock) begin
        if (inclock = '1' and inclock'event) then
            if (wren = '1') then
                MEM(conv_integer(wraddress)) <= data;
            end if;
        end if;
    end process;
    process (outclock) begin
        if (outclock = '1' and outclock'event) then
            q <= MEM(conv_integer(rdaddress));
        end if;
    end process;
end architecture bb;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library synplify;
use synplify.attributes.all;
entity synplicity_altdpram_nwa_nin is
   generic (WIDTH: positive;
            LPM_TYPE: string;
            WIDTHAD: positive;
            NUMWORDS: positive;
            WRADDRESS_REG: string := "INCLOCK";
            WRADDRESS_ACLR: string := "OFF";
            WRCONTROL_REG: string := "INCLOCK";
            WRCONTROL_ACLR: string := "OFF";
            RDADDRESS_REG: string := "UNREGISTERED";
            RDADDRESS_ACLR: string := "OFF";
            RDCONTROL_REG: string := "UNREGISTERED";
            RDCONTROL_ACLR: string := "OFF";
            INDATA_REG: string := "INCLOCK";
            INDATA_ACLR: string := "OFF";
            OUTDATA_REG: string := "UNREGISTERED";
            OUTDATA_ACLR: string := "OFF";
            USE_EAB: string := "UNUSED");
   port (data: in std_logic_vector(WIDTH-1 downto 0);
         rdaddress: in std_logic_vector(WIDTHAD-1 downto 0);
         wraddress: in std_logic_vector(WIDTHAD-1 downto 0);
         wren: in std_logic;
         rden: in std_logic;
         inclock: in std_logic;
         inclocken : in std_logic;
         q: out std_logic_vector(WIDTH-1 downto 0));
attribute syn_isclock : boolean;
attribute syn_isclock of inclock : signal is true;
end entity synplicity_altdpram_nwa_nin;
architecture bb of synplicity_altdpram_nwa_nin is
attribute syn_white_box : boolean;
attribute syn_white_box of bb : architecture is true;
--Estimated timing data for -3 speed grade
--Degradation factor ~ 1.25 to estimate timing for a -4 speed grade
attribute syn_scaletiming : string;
attribute syn_scaletiming of bb : architecture is "eab_scale";
attribute syn_tsu1 : string;
attribute syn_tsu2 : string;
attribute syn_tsu3 : string;
attribute syn_tpd1 : string;
attribute syn_tsu1 of bb : architecture is "data[*]->inclock=5.3";
attribute syn_tsu2 of bb : architecture is "waddress[*]->inclock=5.3";
attribute syn_tsu3 of bb : architecture is "we->inclock=5.5";
attribute syn_tpd1 of bb : architecture is "raddress[*]->q[*]=15.0";
attribute \WIDTH\ : POSITIVE;
attribute \WIDTH\ of all : architecture is WIDTH;
attribute \LPM_TYPE\ : STRING;
attribute \LPM_TYPE\ of all : architecture is LPM_TYPE;
attribute \WIDTHAD\ : POSITIVE;
attribute \WIDTHAD\ of all : architecture is WIDTHAD;
attribute \NUMWORDS\ : POSITIVE;
attribute \NUMWORDS\ of all : architecture is NUMWORDS;
attribute \FILE\ : STRING;
attribute \FILE\ of all : architecture is "UNUSED";
attribute \WRADDRESS_REG\ : STRING;
attribute \WRADDRESS_REG\ of all : architecture is WRADDRESS_REG;
attribute \WRADDRESS_ACLR\ : STRING;
attribute \WRADDRESS_ACLR\ of all : architecture is WRADDRESS_ACLR;
attribute \WRCONTROL_REG\ : STRING;
attribute \WRCONTROL_REG\ of all : architecture is WRCONTROL_REG;
attribute \WRCONTROL_ACLR\ : STRING;
attribute \WRCONTROL_ACLR\ of all : architecture is WRCONTROL_ACLR;
attribute \RDADDRESS_REG\ : STRING;
attribute \RDADDRESS_REG\ of all : architecture is RDADDRESS_REG;
attribute \RDADDRESS_ACLR\ : STRING;
attribute \RDADDRESS_ACLR\ of all : architecture is RDADDRESS_ACLR;
attribute \RDCONTROL_REG\ : STRING;
attribute \RDCONTROL_REG\ of all : architecture is RDCONTROL_REG;
attribute \RDCONTROL_ACLR\ : STRING;
attribute \RDCONTROL_ACLR\ of all : architecture is RDCONTROL_ACLR;
attribute \INDATA_REG\ : STRING;
attribute \INDATA_REG\ of all : architecture is INDATA_REG;
attribute \INDATA_ACLR\ : STRING;
attribute \INDATA_ACLR\ of all : architecture is INDATA_ACLR;
attribute \OUTDATA_REG\ : STRING;
attribute \OUTDATA_REG\ of all : architecture is OUTDATA_REG;
attribute \OUTDATA_ACLR\ : STRING;
attribute \OUTDATA_ACLR\ of all : architecture is OUTDATA_ACLR;
attribute \USE_EAB\ : STRING;
attribute \USE_EAB\ of all : architecture is USE_EAB;
attribute altera_area : integer;
attribute altera_area of all : architecture is 0;
type mem_type is array ((2**WIDTHAD)-1 downto 0) of std_logic_vector (WIDTH-1 downto 0);
signal MEM: mem_type;
begin
    process (inclock) begin
        if (inclock = '1' and inclock'event) then
            if (wren = '1') then
                MEM(conv_integer(wraddress)) <= data;
            end if;
        end if;
    end process;
    q <= MEM(conv_integer(rdaddress));
end architecture bb;

--
-- Simple RAM with separate ADDRESS for read and write
-- Implemented using the altdprams
-- Target : Altera Flex 10KE
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
entity RAM_RW is
    generic (
        width : integer := 3; 
        addrwidth : integer := 2;          -- big enough for depth
        depth : integer := 4;
        dout_reg : boolean := false;       -- has output reg
        din_reg : boolean := false;        -- has data input reg
        addr_reg : boolean := false        -- has read/write address reg
        );
    port (
        DOUT : out std_logic_vector(width-1 downto 0);
        DIN  : in std_logic_vector(width-1 downto 0);
        ADDR : in std_logic_vector(addrwidth-1 downto 0);
        WE  : in std_logic;       -- write enable for ram
        CLK : in std_logic;       -- clock for ram, addr, din
        OCLK : in std_logic       -- opt clock for dout
        );
end entity RAM_RW;

--
-- First implementation must be called arch0
--
architecture arch0 of RAM_RW is

component synplicity_altdpram_out
   generic (WIDTH: positive;
            LPM_TYPE: string;
            WIDTHAD: positive;
            NUMWORDS: positive;
            WRADDRESS_REG: string := "INCLOCK";
            WRADDRESS_ACLR: string := "OFF";
            WRCONTROL_REG: string := "INCLOCK";
            WRCONTROL_ACLR: string := "OFF";
            RDADDRESS_REG: string := "UNREGISTERED";
            RDADDRESS_ACLR: string := "OFF";
            RDCONTROL_REG: string := "UNREGISTERED";
            RDCONTROL_ACLR: string := "OFF";
            INDATA_REG: string := "INCLOCK";
            INDATA_ACLR: string := "OFF";
            OUTDATA_REG: string := "OUTCLOCK";
            OUTDATA_ACLR: string := "OFF";
            USE_EAB: string := "UNUSED");
   port (data: in std_logic_vector(WIDTH-1 downto 0);
         rdaddress: in std_logic_vector(WIDTHAD-1 downto 0);
         wraddress: in std_logic_vector(WIDTHAD-1 downto 0);
         wren: in std_logic;
         rden: in std_logic;
         inclock: in std_logic;
         inclocken : in std_logic;
         outclock: in std_logic;
         outclocken : in std_logic;
         q: out std_logic_vector(WIDTH-1 downto 0));
end component;
component synplicity_altdpram_nwa_nin
   generic (WIDTH: positive;
            LPM_TYPE: string;
            WIDTHAD: positive;
            NUMWORDS: positive;
            WRADDRESS_REG: string := "INCLOCK";
            WRADDRESS_ACLR: string := "OFF";
            WRCONTROL_REG: string := "INCLOCK";
            WRCONTROL_ACLR: string := "OFF";
            RDADDRESS_REG: string := "UNREGISTERED";
            RDADDRESS_ACLR: string := "OFF";
            RDCONTROL_REG: string := "UNREGISTERED";
            RDCONTROL_ACLR: string := "OFF";
            INDATA_REG: string := "INCLOCK";
            INDATA_ACLR: string := "OFF";
            OUTDATA_REG: string := "UNREGISTERED";
            OUTDATA_ACLR: string := "OFF";
            USE_EAB: string := "UNUSED");
   port (data: in std_logic_vector(WIDTH-1 downto 0);
         rdaddress: in std_logic_vector(WIDTHAD-1 downto 0);
         wraddress: in std_logic_vector(WIDTHAD-1 downto 0);
         wren: in std_logic;
         rden: in std_logic;
         inclock: in std_logic;
         inclocken : in std_logic;
         q: out std_logic_vector(WIDTH-1 downto 0));
end component;

signal DOUT_TMP11,DOUT_TMP21 : std_logic_vector(width-1 downto 0);
signal WE_TMP1: std_logic;
signal DIN_REG1  : std_logic_vector(width-1 downto 0);
signal WADDR_REG1  : std_logic_vector(addrwidth-1 downto 0);
constant use_lpm : boolean := ((depth * width) >= 32);

begin


U0 : if((use_lpm) and (dout_reg)) generate
   ULPM : synplicity_altdpram_out
       generic map (WIDTH => width, LPM_TYPE => "ALTDPRAM", WIDTHAD => addrwidth, NUMWORDS => depth,
                    WRADDRESS_REG => "INCLOCK", RDADDRESS_REG => "UNREGISTERED",
                    INDATA_REG=> "INCLOCK", OUTDATA_REG => "OUTCLOCK")
       port map (data => DIN_REG1, rdaddress => WADDR_REG1, wraddress => WADDR_REG1, wren => WE, rden => '1',
                 inclock => CLK, inclocken => '1', outclock => OCLK, outclocken => '1', q => DOUT);
   ULPM01: if (addr_reg) generate
    ULPM1: process (CLK) begin
        if (CLK = '1' and CLK'event) then
            WADDR_REG1 <= ADDR;
        end if;
    end process;
   end generate ULPM01;
   ULPM02: if (not addr_reg) generate
        WADDR_REG1 <= ADDR;
   end generate ULPM02;
   ULPM03: if (din_reg) generate
    ULPM2: process (CLK) begin
        if (CLK = '1' and CLK'event) then
            DIN_REG1 <= DIN;
        end if;
    end process;
   end generate ULPM03;
   ULPM04: if (not din_reg) generate
        DIN_REG1 <= DIN;
   end generate ULPM04;
end generate U0;

-- Change parameter INDATA_REG to "INCLOCK" from "UNREGISTERED"
U1 : if((use_lpm) and (not dout_reg)) generate
   ULPM : synplicity_altdpram_nwa_nin
       generic map (WIDTH => width, LPM_TYPE => "ALTDPRAM", WIDTHAD => addrwidth, NUMWORDS => depth,
                    WRADDRESS_REG => "INCLOCK", RDADDRESS_REG => "UNREGISTERED",
                    INDATA_REG=> "INCLOCK", OUTDATA_REG => "UNREGISTERED")
       port map (data => DIN_REG1, rdaddress => WADDR_REG1, wraddress => WADDR_REG1, wren => WE, rden => '1',
                 inclock => CLK, inclocken => '1', q => DOUT_TMP21);
   ULPM01: if (addr_reg) generate
    ULPM3: process (CLK) begin
        if (CLK = '1' and CLK'event) then
            WADDR_REG1 <= ADDR;
        end if;
    end process;
   end generate ULPM01;
   ULPM02: if (not addr_reg) generate
        WADDR_REG1 <= ADDR;
   end generate ULPM02;
   ULPM03: if (din_reg) generate
    ULPM4: process (CLK) begin
        if (CLK = '1' and CLK'event) then
            DIN_REG1 <= DIN;
        end if;
    end process;
   end generate ULPM03;
   ULPM04: if (not din_reg) generate
        DIN_REG1 <= DIN;
   end generate ULPM04;
   ULPM5: process (CLK) begin
    if (CLK = '1' and CLK'event) then
        DOUT_TMP11 <= DIN_REG1;
        WE_TMP1 <= WE;
    end if;
   end process;
   ULPM6: process (WE_TMP1) begin
    if (WE_TMP1 = '1') then
        DOUT <= DOUT_TMP11;
    else
        DOUT <= DOUT_TMP21;
    end if;
   end process;
end generate U1;

U16 : if (not use_lpm) generate
    type mem_type is array (depth-1 downto 0) of std_logic_vector (width-1 downto 0);
    signal mem: mem_type;
    signal in_reg  : std_logic_vector(width-1 downto 0);         -- used to register DIN 
    signal out_reg : std_logic_vector(width-1 downto 0);         -- used to register DOUT
    signal ad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register RADDR
begin
    U17 : if (addr_reg) generate
        process (CLK, ADDR) begin
            if (CLK = '1' and CLK'event) then
                ad_reg <= ADDR;
            end if;
        end process;
    end generate U17;
    U18 : if (not addr_reg) generate 
        ad_reg <= ADDR;
    end generate U18;
    U19 : if (din_reg) generate
        process (CLK, DIN) begin
            if (CLK = '1' and CLK'event) then
                in_reg <= DIN;
            end if;
        end process;
    end generate U19;
    U20 : if (not din_reg) generate 
        in_reg <= DIN;
    end generate U20;
    U21 : if (dout_reg) generate
        process (OCLK, out_reg) begin
            if (OCLK = '1' and OCLK'event) then
                DOUT <= out_reg;
            end if;
        end process;
    end generate U21;
    U22 : if (not dout_reg) generate 
        DOUT <= out_reg;
    end generate U22;
    process (CLK) begin
        if (CLK = '1' and CLK'event) then
            if (WE = '1') then
                MEM(conv_integer(ad_reg)) <= in_reg;
            end if;
        end if;
    end process;
    out_reg <= MEM(conv_integer(ad_reg));
end generate U16;

end architecture arch0;
