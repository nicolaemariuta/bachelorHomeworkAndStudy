-- $Header: s:/rcs/mappers/dyna/lib/gen_dl6000/RCS/ram_rw.vhd 1.2 1998/11/13 22:14:53 ken Exp $
--
-- Simple RAM with single ADDRESS for both read and write
-- Target : Dynachip
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library dl6000;
use dl6000.components.all;
entity RAM_RW is
    generic (
        family : string := "none";
        width : integer := 3; 
        addrwidth : integer := 2;        -- big enough for depth
        depth : integer :=  4;
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


constant num_cells : integer := ((depth - 1)/32);            -- # of RAMS32X1 cells needed
type out_bus_type is array (num_cells downto 0, width-1 downto 0) of std_logic;
signal out_bus : out_bus_type;                               -- 2D array of dout (input to tri-states)
signal out_en : std_logic_vector(num_cells downto 0);        -- enables for tri-states
signal wrt_en : std_logic_vector(num_cells downto 0);        -- write enables for each row of RAM cells
signal in_reg : std_logic_vector(width-1 downto 0);          -- used to register DIN 
signal out_reg : std_logic_vector(width-1 downto 0);         -- used to register DOUT
signal ad_reg : std_logic_vector(addrwidth-1 downto 0);      -- used to register ADDR
signal low_addr : std_logic_vector(4 downto 0);              -- addr bits input to RAM cells (5 bits required)

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
    U5a  : if (addrwidth > 4) generate
        low_addr <= ad_reg(4 downto 0);
    end generate U5a;

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
    U11 : for i in num_cells downto 0 generate
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
    -- Gnerate the RAM cells and tri-states
        U14 : for j in (width - 1) downto 0 generate
            URAM: rams32x1 
            port map (d => in_reg(j), a0 => low_addr(0), a1 => low_addr(1), a2 => low_addr(2),
                          a3 => low_addr(3), a4 => low_addr(4), we => wrt_en(i), clk => CLK, r => out_bus(i,j));
                out_reg(j) <= out_bus(i,j) when (out_en(i) = '1') else 'Z';
            end generate U14;
        end generate U11;
                             
end architecture arch0;
