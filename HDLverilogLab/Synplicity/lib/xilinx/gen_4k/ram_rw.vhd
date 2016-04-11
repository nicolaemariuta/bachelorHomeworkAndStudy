--
--  Copyright (c) 1998 Synplicity, Inc.
--  All rights reserved.
--
--
-- Simple RAM with single ADDRESS for both read and write
-- Target : Xilinx
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library xc4000;
use xc4000.components.all;
entity RAM_RW is
    generic (
        family: string := "none";
        width : integer := 8; 
        addrwidth : integer := 4;        -- big enough for depth
        depth : integer := 16;
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
-- Last implementation is default
--
architecture select_ram of RAM_RW is
constant num_cells : integer := (((depth - 1) / 32) + (((depth - 1) mod 32) / 16));   -- # of RAM32X1S cells needed 
constant left_over : integer := (((depth + 15) mod 32) / 16);                         -- # of RAM16X1S needed for left over words
type out_bus_type is array (num_cells downto 0, width-1 downto 0) of std_logic;
signal out_bus : out_bus_type;                                                        -- 2D array of dout (input to tri-states)
signal out_en : std_logic_vector(num_cells downto 0);                                 -- enables for tri-states
signal out_en_16 : std_logic;
signal wrt_en : std_logic_vector(num_cells downto 0);                                 -- write enables for each row of RAM cells
signal wrt_en_16 : std_logic;
signal in_reg : std_logic_vector(width-1 downto 0);                                   -- used to register DIN 
signal out_reg : std_logic_vector(width-1 downto 0);                                  -- used to register DOUT
signal ad_reg : std_logic_vector(addrwidth-1 downto 0);                               -- used to register ADDR
signal low_addr : std_logic_vector(4 downto 0);                                       -- addr bits input to RAM cells (4 bits required)

begin

    -- If addrwidth < 5 assign '0' to unused bits
    U0  : if (addrwidth = 1) generate
        low_addr <= "0000" & ad_reg(0);
    end generate U0;
    U1  : if (addrwidth = 2) generate
        low_addr <= "000" & ad_reg(1 downto 0);
    end generate U1;
    U2  : if (addrwidth = 3) generate
        low_addr <= "00" & ad_reg(2 downto 0);
    end generate U2;
    U3  : if (addrwidth = 4) generate
        low_addr <= '0' & ad_reg(3 downto 0);
    end generate U3;
    U4  : if (addrwidth > 4) generate
        low_addr <= ad_reg(4 downto 0);
    end generate U4;

    -- If (din_reg) register DIN using CLK
    U5  : if (din_reg) generate
        process (CLK, DIN) begin
            if (CLK = '1' and CLK'event) then
                in_reg <= DIN;
            end if;
        end process;
    end generate U5;
    U6  : if (not din_reg) generate
            in_reg <= DIN;
    end generate U6;

    -- If (dout_reg) register DOUT using OCLK
    U7  : if (dout_reg) generate
        process (OCLK, out_reg) begin
            if (OCLK = '1' and OCLK'event) then
                DOUT <= out_reg;
            end if;
        end process;
        end generate U7;
    U8  : if (not dout_reg) generate
            DOUT <= out_reg;
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
    U11 : for i in (num_cells - 1) downto 0 generate
    -- If (addrwidth > 5) need to create write enable and output enable select logic
        U12 : if (addrwidth > 5) generate
                out_en(i) <= '1' when (ad_reg(addrwidth-1 downto 5) = i) else '0';
                wrt_en(i) <= WE when (ad_reg(addrwidth-1 downto 5) = i) else '0';
            end generate U12;
    -- If (addrwidth <= 5) no write enable or output enable select logic needed
        U13 : if (addrwidth <= 5) generate
                out_en(i) <= '1';
                wrt_en(i) <= WE;
            end generate U13;
    -- Generate the RAM cells and tri-states
        U14 : for j in (width - 1) downto 0 generate
            URAM32 : RAM32X1S 
                port map (D => in_reg(j), A0 => low_addr(0), A1 => low_addr(1), A2 => low_addr(2),
                          A3 => low_addr(3), A4 => low_addr(4), WE => wrt_en(i), WCLK => CLK, O => out_bus(i,j));
                out_reg(j) <= out_bus(i,j) when (out_en(i) = '1') else 'Z';
            end generate U14;
        end generate U11;            
      
    -- Generate a 16 word deep RAM cell if appropriate               
    U15 : if (left_over = 1) generate
    -- If (addrwidth > 5) need to create write enable and output enable select logic
        U16 : if (addrwidth > 5) generate
                out_en_16 <= '1' when ((ad_reg(addrwidth-1 downto 5) = num_cells) and (ad_reg(4) = '0')) else '0';
                wrt_en_16 <= WE when ((ad_reg(addrwidth-1 downto 5) = num_cells) and (ad_reg(4) = '0')) else '0';
            end generate U16;
    -- If (addrwidth <= 5) no write enable or output enable select logic needed
        U17 : if (addrwidth <= 5) generate
                out_en_16 <= '1';
                wrt_en_16 <= WE;
            end generate U17;
    -- Generate the RAM cell and tri-state
        U18 : for j in (width - 1) downto 0 generate
            URAM16 : RAM16X1S 
                port map (D => in_reg(j), A0 => low_addr(0), A1 => low_addr(1), A2 => low_addr(2),
                          A3 => low_addr(3), WE => wrt_en_16, WCLK => CLK, O => out_bus(num_cells,j));
                out_reg(j) <= out_bus(num_cells,j) when (out_en_16 = '1') else 'Z';
            end generate U18;
        end generate U15;          

end architecture select_ram;
