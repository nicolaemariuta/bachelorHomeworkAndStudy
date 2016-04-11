library ieee;
use ieee.std_logic_1164.all;
package attrpak is
    function COMPUTEAREA(w: integer) return integer;
end;
package body attrpak is
    function COMPUTEAREA(w: integer) return integer is
    begin
        if (w <5) then return 1;
        elsif (w=5) then return 0;
        else return 2**(w-4);
        end if;
    end computearea;
end attrpak;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library synplify;
use synplify.attributes.all;
entity synplicity_ram_dp is
   generic (
      LPM_ADWIDTH : integer;
      LPM_WIDTH: integer
   );
   port (
      ain  : in std_logic_vector(LPM_ADWIDTH-1 downto 0);
      aout : in std_logic_vector(LPM_ADWIDTH-1 downto 0);
      din  : in std_logic_vector(LPM_WIDTH-1 downto 0);
      dout : out std_logic_vector(LPM_WIDTH-1 downto 0);
      wen  : in std_logic;
      clk  : in std_logic;
      oen  : in std_logic
   );
attribute syn_isclock : boolean;
attribute syn_isclock of clk : signal is true;
end entity synplicity_ram_dp ;
architecture bb of synplicity_ram_dp is
attribute syn_white_box : boolean;
attribute syn_white_box of bb : architecture is true;

--timing data 
attribute syn_scaletiming : string;
attribute syn_scaletiming of bb : architecture is "select_ram_scale";
attribute syn_tsu1 : string;
attribute syn_tsu2 : string;
attribute syn_tsu3 : string;
attribute syn_tsu4 : string;
attribute syn_tco1 : string;
attribute syn_tpd1 : string;
attribute syn_tpd2 : string;
attribute syn_tsu1 of bb : architecture is "din[*]->clk=2.0";
attribute syn_tsu2 of bb : architecture is "ain[*]->clk=10.2";
attribute syn_tsu2 of bb : architecture is "ain[*]->wen=10.2";
attribute syn_tsu4 of bb : architecture is "wen->clk=2.0";
attribute syn_tco1 of bb : architecture is "clk->dout[*]=3.5";
attribute syn_tpd1 of bb : architecture is "aout[*]->dout[*]=10.2";
attribute syn_tpd2 of bb : architecture is "oen->dout[*]=9.3";

attribute \LPM_TYPE\ : STRING;
attribute \LPM_TYPE\ of all : architecture is "LPM_RAM_DQ";
attribute \LPM_ADWIDTH\ : INTEGER;
attribute \LPM_ADWIDTH\ of all : architecture is LPM_ADWIDTH;
attribute \LPM_WIDTH\ : INTEGER;
attribute \LPM_WIDTH\ of all : architecture is LPM_WIDTH;
--attribute \LPM_DECODING\ : STRING;
--attribute \LPM_DECODING\ of all : architecture is "CLUSTERED";
--attribute \LPM_RAMTYPE\ : STRING;
--attribute \LPM_RAMTYPE\ of all : architecture is "SYNCHRONOUS";
attribute \LPM_CLOCKNEGATIVE\ : STRING;
attribute \LPM_CLOCKNEGATIVE\ of all : architecture is "false";
--Simulation model
type mem_type is array ((2**LPM_ADWIDTH)-1 downto 0) of std_logic_vector (LPM_WIDTH-1 downto 0);
signal MEM: mem_type;
begin
    process (clk) begin
        if (clk = '1' and clk'event) then
            if (wen = '0') then
                MEM(conv_integer(ain)) <= din;
            end if;
        end if;
    end process;
    dout <= MEM(conv_integer(aout));
end architecture bb;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library at40k;
use at40k.components.all;
entity RAM_R_W is
    generic (
        width : integer := 2; 
        addrwidth : integer := 8;          -- big enough for depth
        depth : integer := 255;
        dout_reg : boolean := false;       -- has output reg
        din_reg : boolean := false;        -- has data input reg
        raddr_reg : boolean := false;      -- has read address reg
        waddr_reg : boolean := false       -- has write address reg
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
-- Due to P&R limitations, the width must be a multiple of 4 bits
-- and the depth can not be > 256.
constant new_width : integer := (((width-1)/4)+1)*4;         -- width must be a multiple of 4
constant pad_width : integer := new_width - width;
constant num_cells_deep : integer := ((depth - 1)/32);       -- # of rows of RAMDSYNC cells needed
constant num_cells_wide : integer := ((width - 1)/4);        -- # of columns of RAMDSYNC cells needed
signal width_pad_reg : std_logic_vector(pad_width-1 downto 0) := (others => '0');
signal in_reg : std_logic_vector(new_width-1 downto 0);      -- used to register DIN 
signal out_reg : std_logic_vector(new_width-1 downto 0);     -- used to register DOUT
signal rad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register RADDR
signal wad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register WADDR
signal out_en : std_logic_vector(num_cells_deep downto 0);   -- output enables for each row of RAM cells
signal wrt_en : std_logic_vector(num_cells_deep downto 0);   -- write enables for each row of RAM cells
signal low_raddr  : std_logic_vector(4 downto 0);            -- raddr bits input to RAM cells (5 bits required)
signal low_waddr  : std_logic_vector(4 downto 0);            -- waddr bits input to RAM cells (5 bits required)

component synplicity_ram_dp
   generic (
      LPM_ADWIDTH : integer;
      LPM_WIDTH: integer
   );
   port (
      ain  : in std_logic_vector(LPM_ADWIDTH-1 downto 0);
      aout : in std_logic_vector(LPM_ADWIDTH-1 downto 0);
      din  : in std_logic_vector(LPM_WIDTH-1 downto 0);
      dout : out std_logic_vector(LPM_WIDTH-1 downto 0);
      wen  : in std_logic;
      clk  : in std_logic;
      oen  : in std_logic
   );
end component;

begin

    -- If addrwidth < 5 assign '0' to unused bits
    U0  : if (addrwidth = 1) generate
        low_raddr <= "0000" & rad_reg(0);
        low_waddr <= "0000" & wad_reg(0);
    end generate U0;
    U1  : if (addrwidth = 2) generate
        low_raddr <= "000" & rad_reg(1 downto 0);
        low_waddr <= "000" & wad_reg(1 downto 0);
    end generate U1;
    U2  : if (addrwidth = 3) generate
        low_raddr <= "00" & rad_reg(2 downto 0);
        low_waddr <= "00" & wad_reg(2 downto 0);
    end generate U2;
    U3  : if (addrwidth = 4) generate
        low_raddr <= '0' & rad_reg(3 downto 0);
        low_waddr <= '0' & wad_reg(3 downto 0);
    end generate U3;
    U4  : if (addrwidth > 4) generate
        low_raddr <= rad_reg(4 downto 0);
        low_waddr <= wad_reg(4 downto 0);
    end generate U4;

    -- If (din_reg) register DIN using CLK
    U5  : if (din_reg) generate
        process (CLK, DIN) begin
            if (CLK = '1' and CLK'event) then
                in_reg <= (width_pad_reg & DIN);
            end if;
        end process;
    end generate U5;
    U6  : if (not din_reg) generate
            in_reg <= (width_pad_reg & DIN);
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
            DOUT <= out_reg(width-1 downto 0);
    end generate U8;

    -- If (raddr_reg) register RADDR using OCLK
    U15  : if (raddr_reg) generate
        process (OCLK, RADDR) begin
            if (OCLK = '1' and OCLK'event) then
                rad_reg <= RADDR(addrwidth-1 downto 0);
            end if;
        end process;
    end generate U15;
    U16 : if (not raddr_reg) generate
            rad_reg <= RADDR;
    end generate U16;

    -- If (waddr_reg) register WRADDR using CLK
    U15w  : if (waddr_reg) generate
        process (CLK, WADDR) begin
            if (CLK = '1' and CLK'event) then
                wad_reg <= WADDR(addrwidth-1 downto 0);
            end if;
        end process;
    end generate U15w;
    U16w : if (not waddr_reg) generate
            wad_reg <= WADDR;
    end generate U16w;

    -- If ((depth > 32) and (depth <= 256)) use an LPM 
    U17 : if ((depth > 32) and (depth <= 256)) generate
        U18 : synplicity_ram_dp
            generic map (
                LPM_ADWIDTH => addrwidth, LPM_WIDTH => new_width
            )
            port map (
                ain => wad_reg, aout => rad_reg, din => in_reg,
                dout => out_reg, wen => NOT(WE), clk => CLK, oen => '0'
            );
    end generate U17;

    -- If ((depth <= 32) or (depth > 256)) directly instantiate RAM primitives (due to P&R limitations)
    U19 : if ((depth <= 32) or (depth > 256)) generate
    -- Generate the RAM cells and select logic
        U20 : for i in num_cells_deep downto 0 generate
            -- If (addrwidth > 5) need to create write enable and output enable select logic
            U21 : if (addrwidth > 5) generate
                out_en(i) <= '0' when (rad_reg(addrwidth-1 downto 5) = i) else '1';
                wrt_en(i) <= NOT(WE) when (wad_reg(addrwidth-1 downto 5) = i) else '1';
            end generate U21;
            -- If (addrwidth <= 5) no write enable or output enable select logic needed
            U22 : if (addrwidth <= 5) generate
                out_en(i) <= '0';
                wrt_en(i) <= NOT(WE);
            end generate U22;
            -- Gnerate the RAM cells
            U23 : for j in num_cells_wide downto 0 generate
                U24 : RAMDSYNC 
                    port map (DIN0 => in_reg((j*4)), DIN1 => in_reg((j*4)+1), DIN2 => in_reg((j*4)+2), DIN3 => in_reg((j*4)+3),
                              AIN0 => low_waddr(0), AIN1 => low_waddr(1), AIN2 => low_waddr(2), AIN3 => low_waddr(3), AIN4 => low_waddr(4),
                              AOUT0 => low_raddr(0), AOUT1 => low_raddr(1), AOUT2 => low_raddr(2), AOUT3 => low_raddr(3), AOUT4 => low_raddr(4),
                              WEN  => wrt_en(i), 
                              OEN  => out_en(i),
                              CLK  => CLK, 
                              DOUT0 => out_reg(j*4), DOUT1 => out_reg((j*4)+1), DOUT2 => out_reg((j*4)+2), DOUT3 => out_reg((j*4)+3));            
            end generate U23;
        end generate U20;     
    end generate U19;
           
end architecture arch0;
