--
-- Simple RAM with seperate ADDRESS for read and write
-- Target : Lucent - ORCA 2A
--
-- Copyright (c) 1998 Synplicity, Inc.
-- All rights reserved.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library orca2;
use orca2.orcacomp.all;
entity RAM_R_W is
    generic (
        width : integer := 1; 
        addrwidth : integer := 4;        -- big enough for depth
        depth : integer :=  16;
        dout_reg : boolean := false;     -- has output reg
        din_reg : boolean := false;      -- has data input reg
        raddr_reg : boolean := false;    -- had read address reg
        waddr_reg : boolean := false     -- had write address reg
        );
    port (
        DOUT  : out std_logic_vector(width-1 downto 0);
        RADDR : in  std_logic_vector(addrwidth-1 downto 0);
        DIN   : in  std_logic_vector(width-1 downto 0);
        WADDR : in  std_logic_vector(addrwidth-1 downto 0);
        WE    : in  std_logic;       -- write enable for ram
        CLK   : in  std_logic;       -- clock for ram, addr, din
        OCLK  : in  std_logic        -- opt clock for dout
        );
end entity RAM_R_W;

--
-- First implementation must be called arch0
--
architecture arch0 of RAM_R_W is
constant num_cells_deep : integer := ((depth - 1)/16);         -- # of rows of DCF16X2Z cells needed
constant num_cells_wide : integer := ((width - 1)/2);          -- # of columns of DCF16X2Z cells needed
signal out_en    : std_logic_vector(num_cells_deep downto 0);  -- enables for tri-states
signal wpe_en    : std_logic_vector(num_cells_deep downto 0);  -- write enables for each row of RAM cells
signal in_reg    : std_logic_vector(width+1 downto 0);         -- used to register DIN 
signal out_reg   : std_logic_vector(width+1 downto 0);         -- used to register DOUT
signal rad_reg   : std_logic_vector(addrwidth-1 downto 0);     -- used to register RADDR
signal wad_reg   : std_logic_vector(addrwidth-1 downto 0);     -- used to register WADDR
signal low_raddr : std_logic_vector(3 downto 0);               -- raddr bits input to RAM cells (4 bits required)
signal low_waddr : std_logic_vector(3 downto 0);               -- waddr bits input to RAM cells (4 bits required)

begin

    -- If addrwidth < 4 assign '0' to unused bits
    U1  : if (addrwidth = 1) generate
        low_raddr <= "000" & rad_reg(0);
        low_waddr <= "000" & wad_reg(0);
    end generate U1;
    U2  : if (addrwidth = 2) generate
        low_raddr <= "00" & rad_reg(1 downto 0);
        low_waddr <= "00" & wad_reg(1 downto 0);
    end generate U2;
    U3  : if (addrwidth = 3) generate
        low_raddr <= '0' & rad_reg(2 downto 0);
        low_waddr <= '0' & wad_reg(2 downto 0);
    end generate U3;
    U4  : if (addrwidth > 3) generate
        low_raddr <= rad_reg(3 downto 0);
        low_waddr <= wad_reg(3 downto 0);
    end generate U4;

    -- If (din_reg) register DIN using CLK
    U5  : if (din_reg) generate
        process (CLK, DIN) begin
            if (CLK = '1' and CLK'event) then
                in_reg <= ("00" & DIN);
            end if;
        end process;
    end generate U5;
    U6  : if (not din_reg) generate
            in_reg <= ("00" & DIN);
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

    -- If (raddr_reg) register RADDR using CLK
    U9  : if (raddr_reg) generate
        process (OCLK, RADDR) begin
            if (OCLK = '1' and OCLK'event) then
                rad_reg <= RADDR(addrwidth-1 downto 0);
            end if;
        end process;
    end generate U9;
    U10 : if (not raddr_reg) generate
            rad_reg <= RADDR;
    end generate U10;
        
    -- If (waddr_reg) register WADDR using CLK
    U15  : if (waddr_reg) generate
        process (CLK, WADDR) begin
            if (CLK = '1' and CLK'event) then
                wad_reg <= WADDR(addrwidth-1 downto 0);
            end if;
        end process;
    end generate U15;
    U16 : if (not waddr_reg) generate
            wad_reg <= WADDR;
    end generate U16;

    -- Generate the RAM cells and select logic
    U11 : for i in num_cells_deep downto 0 generate
    -- If (addrwidth > 4) need to create write enable and output enable select logic
        U12 : if (addrwidth > 4) generate
                out_en(i) <= '0' when (rad_reg(addrwidth-1 downto 4) = i) else '1';
                wpe_en(i) <= '1' when (wad_reg(addrwidth-1 downto 4) = i) else '0';
            end generate U12;
    -- If (addrwidth <= 4) no write enable or output enable select logic needed
    U13 : if (addrwidth <= 4) generate
            out_en(i) <= '0';
                wpe_en(i) <= '1';
            end generate U13;
    -- Gnerate the RAM cells with tri-states
        U14 : for j in num_cells_wide downto 0 generate
            URAM: DCF16X2Z 
            port map (TRI => out_en(i), DI0 => in_reg((2*j)), DI1 => in_reg((2*j)+1), 
                          AD0 => low_waddr(0), AD1 => low_waddr(1), AD2 => low_waddr(2), AD3 => low_waddr(3),
                          RAD0 => low_raddr(0), RAD1 => low_raddr(1), RAD2 => low_raddr(2), RAD3 => low_raddr(3),
                          WREN => WE, WPE => wpe_en(i), CK => CLK, RDO0 => out_reg((j*2)), RDO1 => out_reg((j*2)+1));
            end generate U14;
        end generate U11;
                             
end architecture arch0;
