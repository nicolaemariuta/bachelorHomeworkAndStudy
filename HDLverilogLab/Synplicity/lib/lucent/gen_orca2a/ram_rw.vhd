--
-- Simple RAM with single ADDRESS for both read and write
-- Target : Lucent - ORCA 2A
--
--  Copyright (c) 1998 Synplicity, Inc.
--  All rights reserved.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library orca2;
use orca2.orcacomp.all;
entity RAM_RW is
    generic (
        width : integer := 1; 
        addrwidth : integer := 4;        -- big enough for depth
        depth : integer :=  16;
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
end entity RAM_RW;

--
-- First implementation must be called arch0
--
architecture arch0 of RAM_RW is
constant num_cells_deep : integer := ((depth - 1)/16);       -- # of rows of RCF16X4Z cells needed
constant num_cells_wide : integer := ((width - 1)/4);        -- # of columns of RCF16X4Z cells needed
--type out_bus_type is array (num_cells downto 0, width-1 downto 0) of std_logic;
--signal out_bus : out_bus_type;                               -- 2D array of dout (input to tri-states)
signal out_en : std_logic_vector(num_cells_deep downto 0);        -- enables for tri-states
signal wpe_en : std_logic_vector(num_cells_deep downto 0);        -- write enables for each row of RAM cells
signal in_reg : std_logic_vector(width+3 downto 0);          -- used to register DIN 
signal out_reg : std_logic_vector(width+3 downto 0);         -- used to register DOUT
signal ad_reg : std_logic_vector(addrwidth-1 downto 0);      -- used to register ADDR
signal low_addr : std_logic_vector(3 downto 0);              -- addr bits input to RAM cells (4 bits required)

begin

    -- If addrwidth < 4 assign '0' to unused bits
    U1  : if (addrwidth = 1) generate
        low_addr <= "000" & ad_reg(0);
    end generate U1;
    U2  : if (addrwidth = 2) generate
        low_addr <= "00" & ad_reg(1 downto 0);
    end generate U2;
    U3  : if (addrwidth = 3) generate
        low_addr <= '0' & ad_reg(2 downto 0);
    end generate U3;
    U4  : if (addrwidth > 3) generate
        low_addr <= ad_reg(3 downto 0);
    end generate U4;

    -- If (din_reg) register DIN using CLK
    U5  : if (din_reg) generate
        process (CLK, DIN) begin
            if (CLK = '1' and CLK'event) then
                in_reg <= ("0000" & DIN);
            end if;
        end process;
    end generate U5;
    U6  : if (not din_reg) generate
            in_reg <= ("0000" & DIN);
    end generate U6;

    -- If (dout_reg) register DOUT using OCLK
    U7  : if (dout_reg) generate
        process (OCLK, out_reg) begin
            if (OCLK = '1' and OCLK'event) then
                DOUT <= out_reg(width-1 downto 0);
            end if;
        end process;
        end generate U7;
    U8  : if (not dout_reg) generate
            DOUT <= out_reg(width-1 downto 0);
    end generate U8;

    -- If (addr_reg) register ADDR using CLK
    U9  : if (addr_reg) generate
        process (CLK, ADDR) begin
            if (CLK = '1' and CLK'event) then
                ad_reg <= ADDR(addrwidth-1 downto 0);
            end if;
        end process;
    end generate U9;
    U10 : if (not addr_reg) generate
            ad_reg <= ADDR;
    end generate U10;
        
    -- Generate the RAM cells and select logic
    U11 : for i in num_cells_deep downto 0 generate
    -- If (addrwidth > 4) need to create write enable and output enable select logic
        U12 : if (addrwidth > 4) generate
                out_en(i) <= '0' when (ad_reg(addrwidth-1 downto 4) = i) else '1';
                wpe_en(i) <= '1' when (ad_reg(addrwidth-1 downto 4) = i) else '0';
            end generate U12;
    -- If (addrwidth <= 4) no write enable or output enable select logic needed
    U13 : if (addrwidth <= 4) generate
            out_en(i) <= '0';
                wpe_en(i) <= '1';
            end generate U13;
    -- Gnerate the RAM cells with tri-states
        U14 : for j in num_cells_wide downto 0 generate
            URAM: RCF16X4Z 
            port map (TRI => out_en(i), DI0 => in_reg((4*j)), DI1 => in_reg((4*j)+1), DI2 => in_reg((4*j)+2), 
                          DI3 => in_reg((4*j)+3), AD0 => low_addr(0), AD1 => low_addr(1), AD2 => low_addr(2),
                          AD3 => low_addr(3), WREN => WE, WPE => wpe_en(i), CK => CLK, DO0 => out_reg((j*4)),
                          DO1 => out_reg((j*4)+1), DO2 => out_reg((j*4)+2), DO3 => out_reg((j*4)+3));
            end generate U14;
        end generate U11;
                             
end architecture arch0;
