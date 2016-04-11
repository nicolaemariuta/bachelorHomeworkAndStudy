--
--  Copyright (c) 1998 Synplicity, Inc.
--  All rights reserved.
--
--
-- Simple RAM with single ADDRESS for read and write
-- Target : Lucent - ORCA 3C
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
library orca3;
use orca3.orcacomp.all;
entity RAM_RW is
    generic (
        width : integer := 7; 
        addrwidth : integer := 7;        -- big enough for depth
        depth : integer :=  128;
        dout_reg : boolean := false;     -- has output reg
        din_reg : boolean := false;      -- has data input reg
        addr_reg : boolean := false      -- had read address reg
        );
    port (
        DOUT  : out std_logic_vector(width-1 downto 0);
        DIN   : in  std_logic_vector(width-1 downto 0);
        ADDR  : in  std_logic_vector(addrwidth-1 downto 0);
        WE    : in  std_logic;       -- write enable for ram
        CLK   : in  std_logic;       -- clock for ram, addr, din
        OCLK  : in  std_logic        -- opt clock for dout
        );
end entity RAM_RW;

--
-- First implementation must be called arch0
--
architecture arch0 of RAM_RW is
constant num_cells_deep : integer := ((depth - 1)/32);         -- # of rows of RCE32X4 cells needed
constant num_cells_wide : integer := ((width - 1)/4);          -- # of columns of RCE32X4 cells needed
type out_bus_type is array (num_cells_deep downto 0, (num_cells_wide*4)+3 downto 0) of std_logic;
signal out_bus   : out_bus_type;                               -- 2D array of dout (input to tri-states)
signal out_en    : std_logic_vector(num_cells_deep downto 0);  -- enables for tri-states
signal wpe0_en   : std_logic_vector(num_cells_deep downto 0);  -- write enables for each row of RAM cells
signal wpe1_en   : std_logic_vector(num_cells_deep downto 0);  -- write enables for each row of RAM cells
signal in_reg    : std_logic_vector(width+3 downto 0);         -- used to register DIN 
signal out_reg   : std_logic_vector(width+3 downto 0);         -- used to register DOUT
signal WE_REG1   : std_logic;
signal in_reg1   : std_logic_vector(width+3 downto 0);    
signal ad_reg    : std_logic_vector(addrwidth-1 downto 0);     -- used to register ADDR
signal low_addr  : std_logic_vector(4 downto 0);               -- addr bits input to RAM cells (5 bits required)
type tmp_addr_type is array (num_cells_deep downto 0) of std_logic_vector (9 downto 0);
signal tmp_addr  : tmp_addr_type;

begin

    -- If addrwidth < 5 assign '0' to unused bits
    U1  : if (addrwidth = 1) generate
        low_addr <= "0000" & ad_reg(0);
    end generate U1;
    U2  : if (addrwidth = 2) generate
        low_addr <= "000" & ad_reg(1 downto 0);
    end generate U2;
    U3  : if (addrwidth = 3) generate
        low_addr <= "00" & ad_reg(2 downto 0);
    end generate U3;
    U4  : if (addrwidth = 4) generate
        low_addr <= '0' & ad_reg(3 downto 0);
    end generate U4;
    U5  : if (addrwidth > 4) generate
        low_addr <= ad_reg(4 downto 0);
    end generate U5;

    -- If (din_reg) register DIN using CLK
    U6  : if (din_reg) generate
        process (CLK, DIN) begin
            if (CLK = '1' and CLK'event) then
                in_reg <= ("0000" & DIN);
            end if;
        end process;
    end generate U6;
    U7  : if (not din_reg) generate
            in_reg <= ("0000" & DIN);
    end generate U7;

    process (CLK, WE, in_reg) begin
        if (CLK = '1' and CLK'event) then
            WE_REG1 <= WE;
            in_reg1 <= in_reg;
        end if;
    end process;

    -- If (addr_reg) register ADDR using CLK
    U12  : if (addr_reg) generate
        process (CLK, ADDR) begin
            if (CLK = '1' and CLK'event) then
                ad_reg <= ADDR(addrwidth-1 downto 0);
            end if;
        end process;
    end generate U12;

    U13 : if (not addr_reg) generate
            ad_reg <= ADDR(addrwidth-1 downto 0);
    end generate U13;

    U26  : if (dout_reg) generate
        process (OCLK, out_reg) begin
            if (OCLK = '1' and OCLK'event) then
                DOUT <= out_reg(width-1 downto 0);
            end if;
        end process;
    end generate U26;

    -- Generate the select logic
    U14 : for i in num_cells_deep downto 0 generate
    -- Build output enable select logic
        -- If (addrwidth > 15) don't use SLIC cells
        OE16 : if (addrwidth > 15) generate
                out_en(i) <= '1' when (ad_reg(addrwidth-1 downto 5) = i) else '0';
        end generate OE16;
        -- If (addrwidth > 5) AND (addrwidth <= 15) use SLIC cells
        OE15 : if (addrwidth = 15) generate
                tmp_addr(i)(9 downto 0) <= NOT(conv_std_logic_vector(i, 10)) XOR ad_reg(addrwidth-1 downto 5);
                SAND_15 : SAND10 port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), G => tmp_addr(i)(6), H => tmp_addr(i)(7), 
                                           I => tmp_addr(i)(8), J => tmp_addr(i)(9), Z => out_en(i));
        end generate OE15;
        OE14 : if (addrwidth = 14) generate
                tmp_addr(i)(8 downto 0) <= NOT(conv_std_logic_vector(i, 9)) XOR ad_reg(addrwidth-1 downto 5);
                SAND_14 : SAND10 port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), G => tmp_addr(i)(6), H => tmp_addr(i)(7), 
                                           I => tmp_addr(i)(8), J => '1', Z => out_en(i));
        end generate OE14;
        OE13 : if (addrwidth = 13) generate
                tmp_addr(i)(7 downto 0) <= NOT(conv_std_logic_vector(i, 8)) XOR ad_reg(addrwidth-1 downto 5);
                SAND_13 : SAND8  port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), G => tmp_addr(i)(6), H => tmp_addr(i)(7), 
                                           Z => out_en(i));
        end generate OE13;
        OE12 : if (addrwidth = 12) generate
                tmp_addr(i)(6 downto 0) <= NOT(conv_std_logic_vector(i, 7)) XOR ad_reg(addrwidth-1 downto 5);
                SAND_12 : SAND8  port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), G => tmp_addr(i)(6), H => '1', 
                                           Z => out_en(i));
        end generate OE12;
        OE11 : if (addrwidth = 11) generate
                tmp_addr(i)(5 downto 0) <= NOT(conv_std_logic_vector(i, 6)) XOR ad_reg(addrwidth-1 downto 5);
                SAND_11 : SAND6  port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), Z => out_en(i));
        end generate OE11;
        OE10 : if (addrwidth = 10) generate
                tmp_addr(i)(4 downto 0) <= NOT(conv_std_logic_vector(i, 5)) XOR ad_reg(addrwidth-1 downto 5);
                SAND_10 : SAND6  port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => '1', Z => out_en(i));
        end generate OE10;
        OE9  : if (addrwidth = 9) generate
                tmp_addr(i)(3 downto 0) <= NOT(conv_std_logic_vector(i, 4)) XOR ad_reg(addrwidth-1 downto 5);
                SAND_9 : SAND4   port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           Z => out_en(i));
        end generate OE9;
        OE8  : if (addrwidth = 8) generate
                tmp_addr(i)(2 downto 0) <= NOT(conv_std_logic_vector(i, 3)) XOR ad_reg(addrwidth-1 downto 5);
                SAND_8 : SAND4   port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => '1',
                                           Z => out_en(i));
        end generate OE8;
        OE7  : if (addrwidth = 7) generate
                tmp_addr(i)(1 downto 0) <= NOT(conv_std_logic_vector(i, 2)) XOR ad_reg(addrwidth-1 downto 5);
                SAND_7 : SAND2   port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), Z => out_en(i));
        end generate OE7;
        OE6  : if (addrwidth = 6) generate
                out_en(i) <= '1' when (ad_reg(5) = conv_std_logic_vector(i,1)(0)) else '0';
        end generate OE6;
    -- If (addrwidth <= 5) no output enable select logic needed / map directly to RAM's address lines
        OE5 : if (addrwidth <= 5) generate
                out_en(i) <= '1';
        end generate OE5;

    -- If (addrwidth > 9) use WPE0 to decode address bits 6 through 9 and WPE1 to decode bits 10 +
        WE10 : if (addrwidth > 9) generate
                wpe0_en(i) <= '1' when (ad_reg(8 downto 5) = conv_std_logic_vector(i,20)(3 downto 0)) else '0';
                wpe1_en(i) <= '1' when (ad_reg(addrwidth-1 downto 9) = conv_std_logic_vector(i,20)(addrwidth-6 downto 4)) else '0';
            end generate WE10;
    -- If (addrwidth = 8 or 9) use WPE0 to decode address bits 6 through 9
        WE9  : if ((addrwidth = 8) OR (addrwidth = 9)) generate
                wpe0_en(i) <= '1' when (ad_reg(addrwidth-1 downto 5) = i) else '0';
                wpe1_en(i) <= '1';
            end generate WE9;
    -- If (addrwidth = 7) use WPE0 to decode the 6th address bit & WPE1 to decode the 7th address bit
        WE7  : if (addrwidth = 7) generate
                wpe0_en(i) <= '1' when (ad_reg(5) = conv_std_logic_vector(i,2)(0)) else '0';
                wpe1_en(i) <= '1' when (ad_reg(6) = conv_std_logic_vector(i,2)(1)) else '0';
        end generate WE7;
    -- If (addrwidth = 6) use WPE0 to decode the 6th address bit
        WE6  : if (addrwidth = 6) generate
                wpe0_en(i) <= '1' when (ad_reg(5) = conv_std_logic_vector(i,1)(0)) else '0';
                wpe1_en(i) <= '1';
        end generate WE6;
    -- If (addrwidth <= 5) no write enable select logic needed
        WE5  : if (addrwidth <= 5) generate
                wpe0_en(i) <= '1';
                wpe1_en(i) <= '1';
        end generate WE5;

    end generate U14;

    U25 : if (not dout_reg) generate
        U171: process (WE_REG1, in_reg1, out_reg)
        begin
            if (WE_REG1 = '1') then
                DOUT <= in_reg1(width-1 downto 0);
            else
                DOUT <= out_reg(width-1 downto 0);
            end if;
        end process U171;
    end generate U25;

    -- Generate the RAM cells with tri-states
    U15 : for i in num_cells_deep downto 0 generate
        U17 : for j in num_cells_wide downto 0 generate
            URAM: RCE32X4 
                port map (DI0 => in_reg((j*4)), DI1 => in_reg((j*4)+1), DI2 => in_reg((j*4)+2), DI3 => in_reg((j*4)+3),
                          AD0 => low_addr(0), AD1 => low_addr(1), AD2 => low_addr(2), AD3 => low_addr(3), AD4 => low_addr(4),
--                          WREN => WE, WPE0 => wpe0_en(i), WPE1 => wpe1_en(i), CK => NOT CLK, 
                          WREN => WE, WPE0 => wpe0_en(i), WPE1 => wpe1_en(i), CK => CLK, 
                          DO0 => out_bus(i,(j*4)), DO1 => out_bus(i,(j*4)+1), DO2 => out_bus(i,(j*4)+2), DO3 => out_bus(i,(j*4)+3));
                out_reg((j*4)) <= out_bus(i,(j*4)) when (out_en(i) = '1') else 'Z';
                out_reg((j*4)+1) <= out_bus(i,(j*4)+1) when (out_en(i) = '1') else 'Z';
                out_reg((j*4)+2) <= out_bus(i,(j*4)+2) when (out_en(i) = '1') else 'Z';
                out_reg((j*4)+3) <= out_bus(i,(j*4)+3) when (out_en(i) = '1') else 'Z';
            end generate U17;
        end generate U15;

--  U28 : if (dout_reg) generate
--        U16 : for i in num_cells_deep downto 0 generate
--        U18 : for j in num_cells_wide downto 0 generate
--            URAM: RCE32X4 
--                port map (DI0 => in_reg((j*4)), DI1 => in_reg((j*4)+1), DI2 => in_reg((j*4)+2), DI3 => in_reg((j*4)+3),
--                          AD0 => low_addr(0), AD1 => low_addr(1), AD2 => low_addr(2), AD3 => low_addr(3), AD4 => low_addr(4),
--                          WREN => WE, WPE0 => wpe0_en(i), WPE1 => wpe1_en(i), CK => NOT CLK, 
--                          QDO0 => out_bus(i,(j*4)), QDO1 => out_bus(i,(j*4)+1), QDO2 => out_bus(i,(j*4)+2), QDO3 => out_bus(i,(j*4)+3));
--                out_reg((j*4)) <= out_bus(i,(j*4)) when (out_en(i) = '1') else 'Z';
--                out_reg((j*4)+1) <= out_bus(i,(j*4)+1) when (out_en(i) = '1') else 'Z';
--                out_reg((j*4)+2) <= out_bus(i,(j*4)+2) when (out_en(i) = '1') else 'Z';
--                out_reg((j*4)+3) <= out_bus(i,(j*4)+3) when (out_en(i) = '1') else 'Z';
--            end generate U18;
--       end generate U16;
--    end generate U28;

--      u8 : if (dout_reg) generate
--          DOUT <= out_reg(width-1 downto 0);
--  end generate u8;
                 
end architecture arch0;

