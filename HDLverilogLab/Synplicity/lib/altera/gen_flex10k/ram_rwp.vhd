--
--  Copyright (c) 1998 Synplicity, Inc.
--  All rights reserved.
--
-- $Header: s:/rcs/mappers/altera/lib/gen_flex10k/RCS/ram_rwp.vhd 1.2 1999/03/10 01:41:59 ashish Exp $
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library synplify;
use synplify.attributes.all;
entity synplicity_lpm_ram_dq_reg_out is
   GENERIC (LPM_WIDTH: POSITIVE;
      LPM_TYPE: STRING := "LPM_RAM_DQ";
      LPM_WIDTHAD: POSITIVE;
      LPM_NUMWORDS: STRING := "UNUSED";
      LPM_FILE: STRING := "UNUSED";
      LPM_INDATA: STRING := "REGISTERED";
      LPM_ADDRESS_CONTROL: STRING := "UNUSED";
      LPM_OUTDATA: STRING := "REGISTERED";
      LPM_HINT: STRING := "UNUSED");
   PORT (data: IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0);
      address: IN STD_LOGIC_VECTOR(LPM_WIDTHAD-1 DOWNTO 0);
      we: IN STD_LOGIC;-- := '1';
      inclock: IN STD_LOGIC;
      outclock: IN STD_LOGIC;
      q: OUT STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0));
attribute syn_isclock : boolean;
attribute syn_isclock of inclock : signal is true;
attribute syn_isclock of outclock : signal is true;
end entity synplicity_lpm_ram_dq_reg_out;
architecture bb of synplicity_lpm_ram_dq_reg_out is
attribute syn_white_box : boolean;
attribute syn_white_box of bb : architecture is true;
--Estimated timing data for -3 speed grade
--Degradation factor ~ 1.25 to estimate timing for a -4 speed grade
attribute syn_scaletiming : string;
attribute syn_scaletiming of bb : architecture is "eab_scale";
attribute syn_tsu1 : string;
attribute syn_tsu2 : string;
attribute syn_tsu3 : string;
attribute syn_tco1 : string;
attribute syn_tsu1 of bb : architecture is "data[*]->inclock=5.3";
attribute syn_tsu2 of bb : architecture is "address[*]->inclock=5.3";
attribute syn_tsu3 of bb : architecture is "we->inclock=5.5";
attribute syn_tco1 of bb : architecture is "outclock->q[*]=2.0";
attribute \LPM_WIDTH\ : POSITIVE;
attribute \LPM_WIDTH\ of all : architecture is LPM_WIDTH;
attribute \LPM_TYPE\ : STRING;
attribute \LPM_TYPE\ of all : architecture is LPM_TYPE;
attribute \LPM_WIDTHAD\ : POSITIVE;
attribute \LPM_WIDTHAD\ of all : architecture is LPM_WIDTHAD;
attribute \LPM_NUMWORDS\ : STRING;
attribute \LPM_NUMWORDS\ of all : architecture is LPM_NUMWORDS;
attribute \LPM_FILE\ : STRING;
attribute \LPM_FILE\ of all : architecture is LPM_FILE;
attribute \LPM_INDATA\ : STRING;
attribute \LPM_INDATA\ of all : architecture is LPM_INDATA;
attribute \LPM_ADDRESS_CONTROL\ : STRING;
attribute \LPM_ADDRESS_CONTROL\ of all : architecture is LPM_ADDRESS_CONTROL;
attribute \LPM_OUTDATA\ : STRING;
attribute \LPM_OUTDATA\ of all : architecture is LPM_OUTDATA;
attribute \LPM_HINT\ : STRING;
attribute \LPM_HINT\ of all : architecture is LPM_HINT;
attribute altera_area : integer;
attribute altera_area of all : architecture is 0;
type mem_type is array ((2**LPM_WIDTHAD)-1 downto 0) of std_logic_vector (LPM_WIDTH-1 downto 0);
signal MEM: mem_type;
signal ADDR_1 : std_logic_vector (LPM_WIDTHAD-1 downto 0);
begin
    process (inclock) begin
        if (inclock = '1' and inclock'event) then
            if (we = '1') then
                MEM(conv_integer(address)) <= data;
            end if;
            ADDR_1 <= address;
        end if;
    end process;
    process (outclock) begin
        if (outclock = '1' and outclock'event) then
            q <= MEM(conv_integer(ADDR_1));
        end if;
    end process;
end architecture bb;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library synplify;
use synplify.attributes.all;
entity synplicity_lpm_ram_dq is
   GENERIC (LPM_WIDTH: POSITIVE;
      LPM_TYPE: STRING := "LPM_RAM_DQ";
      LPM_WIDTHAD: POSITIVE;
      LPM_NUMWORDS: STRING := "UNUSED";
      LPM_FILE: STRING := "UNUSED";
      LPM_INDATA: STRING := "UNREGISTERED";
      LPM_ADDRESS_CONTROL: STRING := "UNUSED";
      LPM_OUTDATA: STRING := "UNREGISTERED";
      LPM_HINT: STRING := "UNUSED");
   PORT (data: IN STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0);
      address: IN STD_LOGIC_VECTOR(LPM_WIDTHAD-1 DOWNTO 0);
      we: IN STD_LOGIC;-- := '1';
      inclock: IN STD_LOGIC;
      q: OUT STD_LOGIC_VECTOR(LPM_WIDTH-1 DOWNTO 0));
attribute syn_isclock : boolean;
attribute syn_isclock of inclock : signal is true;
end entity synplicity_lpm_ram_dq;
architecture bb of synplicity_lpm_ram_dq is
attribute syn_white_box : boolean;
attribute syn_white_box of bb : architecture is true;
--Estimated timing data for -3 speed grade
--Degradation factor ~ 1.25 to estimate timing for a -4 speed grade
attribute syn_scaletiming : string;
attribute syn_scaletiming of bb : architecture is "eab_scale";
attribute syn_tsu1 : string;
attribute syn_tsu2 : string;
attribute syn_tsu3 : string;
attribute syn_tco1 : string;
attribute syn_tsu1 of bb : architecture is "data[*]->inclock=5.3";
attribute syn_tsu2 of bb : architecture is "address[*]->inclock=5.3";
attribute syn_tsu3 of bb : architecture is "we->inclock=5.5";
attribute syn_tco1 of bb : architecture is "inclock->q[*]=13.7";
attribute \LPM_WIDTH\ : POSITIVE;
attribute \LPM_WIDTH\ of all : architecture is LPM_WIDTH;
attribute \LPM_TYPE\ : STRING;
attribute \LPM_TYPE\ of all : architecture is LPM_TYPE;
attribute \LPM_WIDTHAD\ : POSITIVE;
attribute \LPM_WIDTHAD\ of all : architecture is LPM_WIDTHAD;
attribute \LPM_NUMWORDS\ : STRING;
attribute \LPM_NUMWORDS\ of all : architecture is LPM_NUMWORDS;
attribute \LPM_FILE\ : STRING;
attribute \LPM_FILE\ of all : architecture is LPM_FILE;
attribute \LPM_INDATA\ : STRING;
attribute \LPM_INDATA\ of all : architecture is LPM_INDATA;
attribute \LPM_ADDRESS_CONTROL\ : STRING;
attribute \LPM_ADDRESS_CONTROL\ of all : architecture is LPM_ADDRESS_CONTROL;
attribute \LPM_OUTDATA\ : STRING;
attribute \LPM_OUTDATA\ of all : architecture is LPM_OUTDATA;
attribute \LPM_HINT\ : STRING;
attribute \LPM_HINT\ of all : architecture is LPM_HINT;
attribute altera_area : integer;
attribute altera_area of all : architecture is 0;
type mem_type is array ((2**LPM_WIDTHAD)-1 downto 0) of std_logic_vector (LPM_WIDTH-1 downto 0);
signal MEM: mem_type;
signal ADDR_1 : std_logic_vector (LPM_WIDTHAD-1 downto 0);
begin
    process (inclock) begin
        if (inclock = '1' and inclock'event) then
            if (we = '1') then
                MEM(conv_integer(address)) <= data;
            end if;
            ADDR_1 <= address;
        end if;
    end process;
    q <= MEM(conv_integer(ADDR_1));
end architecture bb;


--
-- Simple RAM with single ADDRESS for both read and write
-- Read address is staged by a pipeline stage from the write address
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
entity RAM_RWP is
    generic (
        width : integer := 3;
        addrwidth : integer := 2;        -- big enough for depth
        depth : integer := 4;
        dout_reg : boolean := false;     -- has output reg
        din_reg : boolean := false;      -- has data input reg
        addr_reg : boolean := false      -- had address reg
        );
    port (
        DOUT : out std_logic_vector(width-1 downto 0);
        DIN  : in std_logic_vector(width-1 downto 0);
        ADDR : in std_logic_vector(addrwidth-1 downto 0);
        WE  : in std_logic;       -- write enable for ram
        CLK : in std_logic;       -- clock for ram, addr, din
        OCLK : in std_logic       -- opt clock for dout
        );
end entity RAM_RWP;

--
-- First implementation must be called arch0
--
architecture arch0 of RAM_RWP is
component synplicity_lpm_ram_dq_reg_out
   generic (LPM_WIDTH: positive;
      LPM_TYPE: string := "LPM_RAM_DQ";
      LPM_WIDTHAD: positive;
      LPM_NUMWORDS: string := "UNUSED";
      LPM_FILE: string := "UNUSED";
      LPM_INDATA: string := "REGISTERED";
      LPM_ADDRESS_CONTROL: string := "REGISTERED";
      LPM_OUTDATA: string := "REGISTERED";
      LPM_HINT: string := "UNUSED");
   port (data: in std_logic_vector(LPM_WIDTH-1 downto 0);
      address: in std_logic_vector(LPM_WIDTHAD-1 downto 0);
      we: in std_logic;-- := '1';
      inclock: in std_logic;
      outclock: in std_logic;
      q: out std_logic_vector(LPM_WIDTH-1 downto 0));
end component;
component synplicity_lpm_ram_dq
   generic (LPM_WIDTH: positive;
      LPM_TYPE: string := "LPM_RAM_DQ";
      LPM_WIDTHAD: positive;
      LPM_NUMWORDS: string := "UNUSED";
      LPM_FILE: string := "UNUSED";
      LPM_INDATA: string := "UNREGISTERED";
      LPM_ADDRESS_CONTROL: string := "REGISTERED";
      LPM_OUTDATA: string := "UNREGISTERED";
      LPM_HINT: string := "UNUSED");
   port (data: in std_logic_vector(LPM_WIDTH-1 downto 0);
      address: in std_logic_vector(LPM_WIDTHAD-1 downto 0);
      we: in std_logic;-- := '1';
      inclock: in std_logic;
      q: out std_logic_vector(LPM_WIDTH-1 downto 0));
end component;

constant use_lpm : boolean := ((depth * width) >= 32);
signal DIN_REG1, DOUT_TMP11, DOUT_TMP21 : std_logic_vector(width-1 downto 0);
signal ADDR_REG1 : std_logic_vector(addrwidth-1 downto 0);
signal WE_TMP1 : std_logic;

begin


U0 : if((use_lpm) and (dout_reg)) generate
   ULPM : synplicity_lpm_ram_dq_reg_out
       generic map (LPM_WIDTH => width, LPM_TYPE => "LPM_RAM_DQ",
                    LPM_WIDTHAD => addrwidth, LPM_FILE => "UNUSED",
                    LPM_INDATA => "REGISTERED", LPM_ADDRESS_CONTROL => "REGISTERED",
                    LPM_OUTDATA => "REGISTERED", LPM_HINT => "USE_EAB")
       port map (data => DIN_REG1, address => ADDR_REG1, we => WE,
                 inclock => CLK, outclock => OCLK, q => DOUT);
   ADDR_REG1 <= ADDR;
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
U1 : if((use_lpm) and (not dout_reg)) generate
   ULPM : synplicity_lpm_ram_dq
       generic map (LPM_WIDTH => width, LPM_TYPE => "LPM_RAM_DQ",
                    LPM_WIDTHAD => addrwidth, LPM_FILE => "UNUSED",
                    LPM_INDATA => "REGISTERED", LPM_ADDRESS_CONTROL => "REGISTERED",
                    LPM_OUTDATA => "UNREGISTERED", LPM_HINT => "USE_EAB")
       port map (data => DIN_REG1, address => ADDR_REG1, we => WE,
                 inclock => CLK, q => DOUT_TMP21);
   ADDR_REG1 <= ADDR;
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
    signal ad_reg : std_logic_vector(addrwidth-1 downto 0);  -- used to register address
    signal ad_reg2 : std_logic_vector(addrwidth-1 downto 0); -- used to register address
begin
    ad_reg <= ADDR;
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
    -- always stage address between read and write
    process (CLK) begin
        if (CLK = '1' and CLK'event) then
            if (WE = '1') then
                MEM(conv_integer(ad_reg)) <= in_reg;
            end if;
            ad_reg2 <= ad_reg;
        end if;
    end process;
    out_reg <= MEM(conv_integer(ad_reg2));
end generate U16;

end architecture arch0;
