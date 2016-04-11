-- $Header: s:/rcs/mappers/dyna/lib/gen_dl6000/RCS/ram_r_w.vhd 1.2 1998/11/13 22:14:53 ken Exp $
--
-- Simple RAM with separate ADDRESS for read and write
-- Target : Dynachip
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library dl6000;
use dl6000.components.all;


entity RAM_R_W is
    generic (
        family : string := "none";
        width : integer := 3; 
        addrwidth : integer := 2;          -- big enough for depth
        depth : integer := 4;
        dout_reg : boolean := false;       -- has output reg
        din_reg : boolean := false;        -- has data input reg
        raddr_reg : boolean := false;      -- has read address reg
        waddr_reg : boolean  := false      -- has write address reg
        );
    port (
        DOUT : out std_logic_vector(width-1 downto 0);
        RADDR : in std_logic_vector(addrwidth-1 downto 0);
        DIN  : in std_logic_vector(width-1 downto 0);
        WADDR : in std_logic_vector(addrwidth-1 downto 0);
        WE  : in std_logic;       -- write enable for ram
        CLK : in std_logic;       -- clock for ram, addr, din
        OCLK : in std_logic       -- opt clock for dout
        );
end entity RAM_R_W;

--
-- First implementation must be called arch0
--
architecture arch0 of RAM_R_W is
constant num_cells : integer := ((depth - 1)/32);            -- # of RAMD32X1 cells needed
type out_bus_type is array (num_cells downto 0, width-1 downto 0) of std_logic;
signal out_bus : out_bus_type;                               -- 2D array of dout (input to tri-states)
signal out_en : std_logic_vector(num_cells downto 0);        -- enables for tri-states
signal wrt_en : std_logic_vector(num_cells downto 0);        -- write enables for each row of RAM cells
signal in_reg : std_logic_vector(width-1 downto 0);          -- used to register DIN 
signal out_reg : std_logic_vector(width-1 downto 0);         -- used to register DOUT
signal rad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register RADDR
signal wad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register WADDR
signal low_raddr : std_logic_vector(4 downto 0);             -- raddr bits input to RAM cells (5 bits required)
signal low_waddr : std_logic_vector(4 downto 0);             -- waddr bits input to RAM cells (5 bits required)

begin

    -- If addrwidth < 5 assign '0' to unused bits
    U1  : if (addrwidth = 1) generate
        low_raddr <= "0000" & rad_reg(0);
        low_waddr <= "0000" & wad_reg(0);
    end generate U1;
    U2  : if (addrwidth = 2) generate
        low_raddr <= "000" & rad_reg(1 downto 0);
        low_waddr <= "000" & wad_reg(1 downto 0);
    end generate U2;
    U3  : if (addrwidth = 3) generate
        low_raddr <= "00" & rad_reg(2 downto 0);
        low_waddr <= "00" & wad_reg(2 downto 0);
    end generate U3;
    U4  : if (addrwidth = 4) generate
        low_raddr <= '0' & rad_reg(3 downto 0);
        low_waddr <= '0' & wad_reg(3 downto 0);
    end generate U4;
    U5a  : if (addrwidth > 4) generate
        low_raddr <= rad_reg(4 downto 0);
        low_waddr <= wad_reg(4 downto 0);
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

    -- If (raddr_reg) register RADDR using OCLK
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
    U11 : for i in num_cells downto 0 generate
        -- If (addrwidth > 5) need to create write enable and output enable select logic
        U12 : if (addrwidth > 5) generate
                out_en(i) <= '1' when (rad_reg(addrwidth-1 downto 5) = i) else '0';
                wrt_en(i) <= WE when (wad_reg(addrwidth-1 downto 5) = i) else '0';
        end generate U12;
        -- If (addrwidth <= 5) no write enable or output enable select logic needed
        U13 : if (addrwidth <= 5) generate
                out_en(i) <= '1';
                wrt_en(i) <= WE;
            end generate U13;
    -- Gnerate the RAM cells and tri-states
        U14 : for j in (width - 1) downto 0 generate
            URAM: ramd32x1 
                port map (d => in_reg(j), a0w => low_waddr(0), a1w => low_waddr(1), a2w => low_waddr(2),
                          a3w => low_waddr(3), a4w => low_waddr(4),  a0r => low_raddr(0), a1r => low_raddr(1), 
                          a2r => low_raddr(2), a3r => low_raddr(3), a4r => low_raddr(4), we => wrt_en(i), 
                          clk => CLK, r => out_bus(i,j));
            out_reg(j) <= out_bus(i,j) when (out_en(i) = '1') else 'Z';
            end generate U14;
        end generate U11;
                             
end architecture arch0;
