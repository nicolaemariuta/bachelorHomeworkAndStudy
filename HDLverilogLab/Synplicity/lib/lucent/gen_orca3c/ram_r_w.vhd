--
--  Copyright (c) 1998 Synplicity, Inc.
--  All rights reserved.
--
--
-- Dual-port RAM with seperate ADDRESS for read and write
-- Target : Lucent - ORCA 3C
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
library orca3;
use orca3.orcacomp.all;
entity RAM_R_W is
    generic (
        width : integer := 7; 
        addrwidth : integer := 7;        -- big enough for depth
        depth : integer :=  128;
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
constant num_cells_deep : integer := ((depth - 1)/32);         -- # of rows of DCE32X4 cells needed
constant num_cells_wide : integer := ((width - 1)/4);          -- # of columns of DCE32X4 cells needed
type out_bus_type is array (num_cells_deep downto 0, (num_cells_wide*4)+3 downto 0) of std_logic;
signal out_bus : out_bus_type;                                 -- 2D array of dout (input to tri-states)
signal out_en    : std_logic_vector(num_cells_deep downto 0);  -- enables for tri-states
signal wpe0_en   : std_logic_vector(num_cells_deep downto 0);  -- write enables for each row of RAM cells
signal wpe1_en   : std_logic_vector(num_cells_deep downto 0);  -- write enables for each row of RAM cells
signal in_reg    : std_logic_vector(width+3 downto 0);         -- used to register DIN 
signal WE_REG1   : std_logic;
signal in_reg1   : std_logic_vector(width+3 downto 0);    
signal out_reg   : std_logic_vector(width+3 downto 0);         -- used to register DOUT
signal rad_reg   : std_logic_vector(addrwidth-1 downto 0);     -- used to register RADDR
signal wad_reg   : std_logic_vector(addrwidth-1 downto 0);     -- used to register WADDR
signal low_raddr : std_logic_vector(4 downto 0);               -- raddr bits input to RAM cells (5 bits required)
signal low_waddr : std_logic_vector(4 downto 0);               -- waddr bits input to RAM cells (5 bits required)
type tmp_addr_type is array (num_cells_deep downto 0) of std_logic_vector (9 downto 0);
signal tmp_addr  : tmp_addr_type;

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
    U5  : if (addrwidth > 4) generate
        low_raddr <= rad_reg(4 downto 0);
        low_waddr <= wad_reg(4 downto 0);
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

    -- If (raddr_reg) register RADDR using CLK
    U10  : if (raddr_reg) generate
        process (OCLK, RADDR) begin
            if (OCLK = '1' and OCLK'event) then
                rad_reg <= RADDR(addrwidth-1 downto 0);
            end if;
        end process;
    end generate U10;
    U11 : if (not raddr_reg) generate
            rad_reg <= RADDR(addrwidth-1 downto 0);
    end generate U11;
        
    -- If (waddr_reg) register WADDR using CLK
    U12  : if (waddr_reg) generate
        process (CLK, WADDR) begin
            if (CLK = '1' and CLK'event) then
                wad_reg <= WADDR(addrwidth-1 downto 0);
            end if;
        end process;
    end generate U12;
    U13 : if (not waddr_reg) generate
            wad_reg <= WADDR;
    end generate U13;

    -- Generate the RAM cells and select logic
    U14 : for i in num_cells_deep downto 0 generate
    -- Build output enable select logic
        -- If (addrwidth > 15) can't use a SLIC cell
        OE16 : if (addrwidth > 15) generate
                out_en(i) <= '1' when (rad_reg(addrwidth-1 downto 5) = i) else '0';
        end generate OE16;
        -- If (addrwidth > 5) AND (addrwidth <= 15) usa a SLIC cell
        OE15 : if (addrwidth = 15) generate
                tmp_addr(i)(9 downto 0) <= NOT(conv_std_logic_vector(i, 10)) XOR rad_reg(addrwidth-1 downto 5);
                SAND_15 : SAND10 port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), G => tmp_addr(i)(6), H => tmp_addr(i)(7), 
                                           I => tmp_addr(i)(8), J => tmp_addr(i)(9), Z => out_en(i));
        end generate OE15;
        OE14 : if (addrwidth = 14) generate
                tmp_addr(i)(8 downto 0) <= NOT(conv_std_logic_vector(i, 9)) XOR rad_reg(addrwidth-1 downto 5);
                SAND_14 : SAND10 port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), G => tmp_addr(i)(6), H => tmp_addr(i)(7), 
                                           I => tmp_addr(i)(8), J => '1', Z => out_en(i));
        end generate OE14;
        OE13 : if (addrwidth = 13) generate
                tmp_addr(i)(7 downto 0) <= NOT(conv_std_logic_vector(i, 8)) XOR rad_reg(addrwidth-1 downto 5);
                SAND_13 : SAND8  port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), G => tmp_addr(i)(6), H => tmp_addr(i)(7), 
                                           Z => out_en(i));
        end generate OE13;
        OE12 : if (addrwidth = 12) generate
                tmp_addr(i)(6 downto 0) <= NOT(conv_std_logic_vector(i, 7)) XOR rad_reg(addrwidth-1 downto 5);
                SAND_12 : SAND8  port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), G => tmp_addr(i)(6), H => '1', 
                                           Z => out_en(i));
        end generate OE12;
        OE11 : if (addrwidth = 11) generate
                tmp_addr(i)(5 downto 0) <= NOT(conv_std_logic_vector(i, 6)) XOR rad_reg(addrwidth-1 downto 5);
                SAND_11 : SAND6  port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => tmp_addr(i)(5), Z => out_en(i));
        end generate OE11;
        OE10 : if (addrwidth = 10) generate
                tmp_addr(i)(4 downto 0) <= NOT(conv_std_logic_vector(i, 5)) XOR rad_reg(addrwidth-1 downto 5);
                SAND_10 : SAND6  port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           E => tmp_addr(i)(4), F => '1', Z => out_en(i));
        end generate OE10;
        OE9  : if (addrwidth = 9) generate
                tmp_addr(i)(3 downto 0) <= NOT(conv_std_logic_vector(i, 4)) XOR rad_reg(addrwidth-1 downto 5);
                SAND_9 : SAND4   port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => tmp_addr(i)(3),
                                           Z => out_en(i));
        end generate OE9;
        OE8  : if (addrwidth = 8) generate
                tmp_addr(i)(2 downto 0) <= NOT(conv_std_logic_vector(i, 3)) XOR rad_reg(addrwidth-1 downto 5);
                SAND_8 : SAND4   port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), C => tmp_addr(i)(2), D => '1',
                                           Z => out_en(i));
        end generate OE8;
        OE7  : if (addrwidth = 7) generate
                tmp_addr(i)(1 downto 0) <= NOT(conv_std_logic_vector(i, 2)) XOR rad_reg(addrwidth-1 downto 5);
                SAND_7 : SAND2   port map (A => tmp_addr(i)(0), B => tmp_addr(i)(1), Z => out_en(i));
        end generate OE7;
        OE6  : if (addrwidth = 6) generate
                out_en(i) <= '1' when (rad_reg(5) = conv_std_logic_vector(i,1)(0)) else '0';
        end generate OE6;
    -- If (addrwidth <= 5) no output enable select logic needed
        OE5 : if (addrwidth <= 5) generate
                out_en(i) <= '1';
        end generate OE5;

    -- If (addrwidth > 9) use WPE0 to decode address bits 6 through 9 and WPE1 to decode bits 10 +
        WE10 : if (addrwidth > 9) generate
                wpe0_en(i) <= '1' when (wad_reg(8 downto 5) = conv_std_logic_vector(i,20)(3 downto 0)) else '0';
                wpe1_en(i) <= '1' when (wad_reg(addrwidth-1 downto 9) = conv_std_logic_vector(i,20)(addrwidth-6 downto 4)) else '0';
            end generate WE10;
    -- If (addrwidth = 8 or 9) use WPE0 to decode address bits 6 through 9
        WE9  : if ((addrwidth = 8) OR (addrwidth = 9)) generate
                wpe0_en(i) <= '1' when (wad_reg(addrwidth-1 downto 5) = i) else '0';
                wpe1_en(i) <= '1';
            end generate WE9;
    -- If (addrwidth = 7) use WPE0 to decode the 6th address bit & WPE1 to decode the 7th address bit
        WE7  : if (addrwidth = 7) generate
                wpe0_en(i) <= '1' when (wad_reg(5) = conv_std_logic_vector(i,2)(0)) else '0';
                wpe1_en(i) <= '1' when (wad_reg(6) = conv_std_logic_vector(i,2)(1)) else '0';
        end generate WE7;
    -- If (addrwidth = 6) use WPE0 to decode the 6th address bit
        WE6  : if (addrwidth = 6) generate
                wpe0_en(i) <= '1' when (wad_reg(5) = conv_std_logic_vector(i,1)(0)) else '0';
                wpe1_en(i) <= '1';
        end generate WE6;
    -- If (addrwidth <= 5) no write enable select logic needed
        WE5  : if (addrwidth <= 5) generate
                wpe0_en(i) <= '1';
                wpe1_en(i) <= '1';
        end generate WE5;

    end generate U14;

    process (CLK, DIN) begin
       if (CLK = '1' and CLK'event) then
           in_reg1 <= in_reg;
           WE_REG1 <= WE;
       end if;
    end process;

    U25 : if (not dout_reg) generate
        U171: process (WE_REG1, RADDR, WADDR, in_reg1, out_reg)
        begin
            if ((WE_REG1 = '1') and (RADDR = WADDR)) then
                DOUT <= in_reg1(width-1 downto 0);
            else
                DOUT <= out_reg(width-1 downto 0);
            end if;
        end process U171;
    end generate U25;

    U30  : if (dout_reg) generate
        process (OCLK, out_reg) begin
            if (OCLK = '1' and OCLK'event) then
                DOUT <= out_reg(width-1 downto 0);
            end if;
        end process;
    end generate U30;

    -- Gnerate the RAM cells with tri-states
    U15 : for i in num_cells_deep downto 0 generate
        U17 : for j in num_cells_wide downto 0 generate
            URAM: DCE32X4 
                port map (DI0 => in_reg((j*4)), DI1 => in_reg((j*4)+1), DI2 => in_reg((j*4)+2), DI3 => in_reg((j*4)+3),
                          WAD0 => low_waddr(0), WAD1 => low_waddr(1), WAD2 => low_waddr(2), WAD3 => low_waddr(3), WAD4 => low_waddr(4),
                          RAD0 => low_raddr(0), RAD1 => low_raddr(1), RAD2 => low_raddr(2), RAD3 => low_raddr(3), RAD4 => low_raddr(4),
--                          WREN => WE, WPE0 => wpe0_en(i), WPE1 => wpe1_en(i), CK => NOT(CLK), 
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
--            URAM: DCE32X4 
--                port map (DI0 => in_reg((j*4)), DI1 => in_reg((j*4)+1), DI2 => in_reg((j*4)+2), DI3 => in_reg((j*4)+3),
--                          WAD0 => low_waddr(0), WAD1 => low_waddr(1), WAD2 => low_waddr(2), WAD3 => low_waddr(3), WAD4 => low_waddr(4),
--                          RAD0 => low_raddr(0), RAD1 => low_raddr(1), RAD2 => low_raddr(2), RAD3 => low_raddr(3), RAD4 => low_raddr(4),
--                          WREN => WE, WPE0 => wpe0_en(i), WPE1 => wpe1_en(i), CK => NOT(CLK), 
--                          QDO0 => out_bus(i,(j*4)), QDO1 => out_bus(i,(j*4)+1), QDO2 => out_bus(i,(j*4)+2), QDO3 => out_bus(i,(j*4)+3));
--
--              out_reg((j*4)) <= out_bus(i,(j*4)) when (out_en(i) = '1') else 'Z';
--                out_reg((j*4)+1) <= out_bus(i,(j*4)+1) when (out_en(i) = '1') else 'Z';
--                out_reg((j*4)+2) <= out_bus(i,(j*4)+2) when (out_en(i) = '1') else 'Z';
--                out_reg((j*4)+3) <= out_bus(i,(j*4)+3) when (out_en(i) = '1') else 'Z';
--            end generate U18;
--       end generate U16;
--    end generate U28;

--      u8 : if (dout_reg) generate
--      DOUT <= out_reg(width-1 downto 0);
--  end generate u8;
        
end architecture arch0;

