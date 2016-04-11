--
-- Simple RAM with separate ADDRESS for read and write
-- Target : Xilinx
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library virtex;
use virtex.components.all;
entity RAM_RW_R is
    generic (
        family : string := "none";
        width : integer := 2; 
        addrwidth : integer := 4;          -- big enough for depth
        depth : integer := 16;
        rdout_reg : boolean := true;      -- has output reg
        wdout_reg : boolean := true;      -- has output reg
        din_reg : boolean := false;        -- has data input reg
        raddr_reg : boolean := false;      -- has read address reg
        waddr_reg : boolean  := false      -- has write address reg
        );
    port (
        R_DOUT : out std_logic_vector(width-1 downto 0);
        W_DOUT : out std_logic_vector(width-1 downto 0);
        RADDR : in std_logic_vector(addrwidth-1 downto 0);
        DIN  : in std_logic_vector(width-1 downto 0);
        WADDR : in std_logic_vector(addrwidth-1 downto 0);
        WE  : in std_logic;       -- write enable for ram
        CLK : in std_logic;       -- clock for ram, addr, din
        R_OCLK : in std_logic;    -- opt clock for r_dout
        W_OCLK : in std_logic     -- opt clock for w_dout
        );
end entity RAM_RW_R;

-- block ram arch
architecture block_ram of RAM_RW_R is
attribute generator_report : string;
attribute generator_report of block_ram : architecture is "Dual port Block RAM not supported yet, inferring Select RAM";
constant num_cells : integer := ((depth - 1)/16);            -- # of RAM16X1D cells needed
type out_bus_type is array (num_cells downto 0, width-1 downto 0) of std_logic;
signal rout_bus : out_bus_type;                              -- 2D array of r_dout (input to tri-states)
signal rout_en : std_logic_vector(num_cells downto 0);       -- enables for tri-states
signal wout_bus : out_bus_type;                              -- 2D array of w_dout (input to tri-states)
signal wout_en : std_logic_vector(num_cells downto 0);       -- enables for tri-states
signal wrt_en : std_logic_vector(num_cells downto 0);        -- write enables for each row of RAM cells
signal in_reg : std_logic_vector(width-1 downto 0);          -- used to register DIN 
signal rout_reg : std_logic_vector(width-1 downto 0);        -- used to register R_DOUT
signal wout_reg : std_logic_vector(width-1 downto 0);        -- used to register W_DOUT
signal rad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register RADDR
signal wad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register WADDR
signal low_raddr : std_logic_vector(3 downto 0);             -- raddr bits input to RAM cells (4 bits required)
signal low_waddr : std_logic_vector(3 downto 0);             -- waddr bits input to RAM cells (4 bits required)

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
                in_reg <= DIN;
            end if;
        end process;
    end generate U5;
    U6  : if (not din_reg) generate
            in_reg <= DIN;
    end generate U6;

    -- If (rout_reg) register DOUT using OCLK
    U7r  : if (rdout_reg) generate
        process (R_OCLK, rout_reg) begin
            if (R_OCLK = '1' and R_OCLK'event) then
                R_DOUT <= rout_reg;
            end if;
        end process;
    end generate U7r;
    U8r  : if (not rdout_reg) generate
            R_DOUT <= rout_reg;
    end generate U8r;

    -- If (rout_reg) register DOUT using OCLK
    U7w  : if (wdout_reg) generate
        process (W_OCLK, wout_reg) begin
            if (W_OCLK = '1' and W_OCLK'event) then
                W_DOUT <= wout_reg;
            end if;
        end process;
    end generate U7w;
    U8w  : if (not wdout_reg) generate
            W_DOUT <= wout_reg;
    end generate U8w;

    -- If (raddr_reg) register RADDR using OCLK
    U9  : if (raddr_reg) generate
        process (R_OCLK, RADDR) begin
            if (R_OCLK = '1' and R_OCLK'event) then
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
        -- If (addrwidth > 4) need to create write enable and output enable select logic
        U12 : if (addrwidth > 4) generate
                rout_en(i) <= '1' when (rad_reg(addrwidth-1 downto 4) = i) else '0';
                wout_en(i) <= '1' when (wad_reg(addrwidth-1 downto 4) = i) else '0';
                wrt_en(i) <= WE when (wad_reg(addrwidth-1 downto 4) = i) else '0';
        end generate U12;
        -- If (addrwidth <= 4) no write enable or output enable select logic needed
        U13 : if (addrwidth <= 4) generate
                rout_en(i) <= '1';
                wout_en(i) <= '1';
                wrt_en(i) <= WE;
            end generate U13;
    -- Gnerate the RAM cells and tri-states
        U14 : for j in (width - 1) downto 0 generate
            URAM: RAM16X1D 
                port map (D => in_reg(j), A0 => low_waddr(0), A1 => low_waddr(1), A2 => low_waddr(2),
                          A3 => low_waddr(3), DPRA0 => low_raddr(0), DPRA1 => low_raddr(1), 
                          DPRA2 => low_raddr(2), DPRA3 => low_raddr(3), WE => wrt_en(i), 
                          WCLK => CLK, DPO => rout_bus(i,j), SPO => wout_bus(i,j));
            rout_reg(j) <= rout_bus(i,j) when (rout_en(i) = '1') else 'Z';
            wout_reg(j) <= wout_bus(i,j) when (wout_en(i) = '1') else 'Z';
            end generate U14;
        end generate U11;
                            
end architecture block_ram;

--
--
-- Last implementation is default
--
architecture select_ram of RAM_RW_R is
constant num_cells : integer := ((depth - 1)/16);            -- # of RAM16X1D cells needed
type out_bus_type is array (num_cells downto 0, width-1 downto 0) of std_logic;
signal rout_bus : out_bus_type;                              -- 2D array of r_dout (input to tri-states)
signal rout_en : std_logic_vector(num_cells downto 0);       -- enables for tri-states
signal wout_bus : out_bus_type;                              -- 2D array of w_dout (input to tri-states)
signal wout_en : std_logic_vector(num_cells downto 0);       -- enables for tri-states
signal wrt_en : std_logic_vector(num_cells downto 0);        -- write enables for each row of RAM cells
signal in_reg : std_logic_vector(width-1 downto 0);          -- used to register DIN 
signal rout_reg : std_logic_vector(width-1 downto 0);        -- used to register R_DOUT
signal wout_reg : std_logic_vector(width-1 downto 0);        -- used to register W_DOUT
signal rad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register RADDR
signal wad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register WADDR
signal low_raddr : std_logic_vector(3 downto 0);             -- raddr bits input to RAM cells (4 bits required)
signal low_waddr : std_logic_vector(3 downto 0);             -- waddr bits input to RAM cells (4 bits required)

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
                in_reg <= DIN;
            end if;
        end process;
    end generate U5;
    U6  : if (not din_reg) generate
            in_reg <= DIN;
    end generate U6;

    -- If (rout_reg) register DOUT using OCLK
    U7r  : if (rdout_reg) generate
        process (R_OCLK, rout_reg) begin
            if (R_OCLK = '1' and R_OCLK'event) then
                R_DOUT <= rout_reg;
            end if;
        end process;
    end generate U7r;
    U8r  : if (not rdout_reg) generate
            R_DOUT <= rout_reg;
    end generate U8r;

    -- If (rout_reg) register DOUT using OCLK
    U7w  : if (wdout_reg) generate
        process (W_OCLK, wout_reg) begin
            if (W_OCLK = '1' and W_OCLK'event) then
                W_DOUT <= wout_reg;
            end if;
        end process;
    end generate U7w;
    U8w  : if (not wdout_reg) generate
            W_DOUT <= wout_reg;
    end generate U8w;

    -- If (raddr_reg) register RADDR using OCLK
    U9  : if (raddr_reg) generate
        process (R_OCLK, RADDR) begin
            if (R_OCLK = '1' and R_OCLK'event) then
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
        -- If (addrwidth > 4) need to create write enable and output enable select logic
        U12 : if (addrwidth > 4) generate
                rout_en(i) <= '1' when (rad_reg(addrwidth-1 downto 4) = i) else '0';
                wout_en(i) <= '1' when (wad_reg(addrwidth-1 downto 4) = i) else '0';
                wrt_en(i) <= WE when (wad_reg(addrwidth-1 downto 4) = i) else '0';
        end generate U12;
        -- If (addrwidth <= 4) no write enable or output enable select logic needed
        U13 : if (addrwidth <= 4) generate
                rout_en(i) <= '1';
                wout_en(i) <= '1';
                wrt_en(i) <= WE;
            end generate U13;
    -- Gnerate the RAM cells and tri-states
        U14 : for j in (width - 1) downto 0 generate
            URAM: RAM16X1D 
                port map (D => in_reg(j), A0 => low_waddr(0), A1 => low_waddr(1), A2 => low_waddr(2),
                          A3 => low_waddr(3), DPRA0 => low_raddr(0), DPRA1 => low_raddr(1), 
                          DPRA2 => low_raddr(2), DPRA3 => low_raddr(3), WE => wrt_en(i), 
                          WCLK => CLK, DPO => rout_bus(i,j), SPO => wout_bus(i,j));
            rout_reg(j) <= rout_bus(i,j) when (rout_en(i) = '1') else 'Z';
            wout_reg(j) <= wout_bus(i,j) when (wout_en(i) = '1') else 'Z';
            end generate U14;
        end generate U11;
                             
end architecture select_ram;
