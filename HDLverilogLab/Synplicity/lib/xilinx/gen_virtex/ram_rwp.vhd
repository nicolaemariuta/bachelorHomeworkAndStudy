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
library virtex;
use virtex.components.all;
entity RAM_RWP is
	generic (
		family : string := "none";
		width : integer := 2; 
		addrwidth : integer := 8;        -- big enough for depth
		depth : integer := 256;
		dout_reg : boolean := false;     -- has output reg
		din_reg : boolean := false;      -- has data input reg
		addr_reg : boolean := false      -- had address reg
		);
	port (
		DOUT: out std_logic_vector(width-1 downto 0);
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
architecture block_ram of RAM_RWP is
type int_array is array (0 to 4) of integer;
constant width_array : int_array := (1, 2, 4, 8, 16);
constant depth_array : int_array := (4096, 2048, 1024, 512, 256);
constant div16 : integer := (width-1)/16;
constant div8 : integer := (width-1)/8;
constant div4 : integer := (width-1)/4;
constant div2 : integer := (width-1)/2;
constant div1 : integer := (width-1)/1;

constant bool1 : boolean := (div1 > 0);
constant bool2 : boolean := (div2 > 0);
constant bool4 : boolean := (div4 > 0);
constant bool8 : boolean := (div8 > 0);
constant bool16 : boolean := (div16 > 0);

constant div4096 : integer := (depth-1)/4096;
constant div2048 : integer := (depth-1)/2048;
constant div1024 : integer := (depth-1)/1024;
constant div512 : integer := (depth-1)/512;
constant div256 : integer := (depth-1)/256;

constant bool256 : boolean := (div256 > 0);
constant bool512 : boolean := (div512 > 0);
constant bool1024 : boolean := (div1024 > 0);
constant bool2048 : boolean := (div2048 > 0);
constant bool4096 : boolean := (div4096 > 0);

constant sum_width : integer := BOOLEAN'pos(bool1) + BOOLEAN'pos(bool2) + BOOLEAN'pos(bool4) + BOOLEAN'pos(bool8);
constant sum_depth : integer := 4 - (BOOLEAN'pos(bool256) + BOOLEAN'pos(bool512) + BOOLEAN'pos(bool1024) + BOOLEAN'pos(bool2048));

constant w_choice_width : integer := width_array(sum_width);
constant w_choice_depth : integer := depth_array(sum_width);
constant d_choice_width : integer := width_array(sum_depth);
constant d_choice_depth : integer := depth_array(sum_depth);

constant w_width_num_cells : integer := (width-1)/w_choice_width + 1;
constant w_depth_num_cells : integer := (depth-1)/w_choice_depth + 1;

constant d_width_num_cells : integer := (width-1)/d_choice_width + 1;
constant d_depth_num_cells : integer := (depth-1)/d_choice_depth + 1;

constant w_size : integer := w_width_num_cells * w_depth_num_cells;
constant d_size : integer := d_width_num_cells * d_depth_num_cells;

constant bool_d : boolean := (d_size - w_size <= 0);
constant bool_w : boolean := not(bool_d);

constant choice_width : integer := (BOOLEAN'pos(bool_d) * d_choice_width) + (BOOLEAN'pos(bool_w) * w_choice_width);
constant choice_depth : integer := (BOOLEAN'pos(bool_d) * d_choice_depth) + (BOOLEAN'pos(bool_w) * w_choice_depth);
constant width_num_cells : integer := (BOOLEAN'pos(bool_d) *(width-1)/d_choice_width) + (BOOLEAN'pos(bool_w) * (width-1)/w_choice_width) + 1;
constant depth_num_cells : integer := (BOOLEAN'pos(bool_d) *(depth-1)/d_choice_depth) + (BOOLEAN'pos(bool_w) * (depth-1)/w_choice_depth) + 1;
--constant num_cells : integer := (((depth - 1) / 32) + (((depth - 1) mod 32) / 16));   -- # of RAM32X1S cells needed 
--constant left_over : integer := (((depth + 15) mod 32) / 16);                         -- # of RAM16X1S needed for left over words
type out_bus1_type is array (depth_num_cells-1 downto 0, width_num_cells-1 downto 0) of std_logic;
signal out_bus1 : out_bus1_type;                                                        -- 2D array of dout (input to tri-states)
type out_bus2_type is array (depth_num_cells-1 downto 0, 2*width_num_cells+1 downto 0) of std_logic;
signal out_bus2 : out_bus2_type;                                                        -- 2D array of dout (input to tri-states)
type out_bus4_type is array (depth_num_cells-1 downto 0, 4*width_num_cells+3 downto 0) of std_logic;
signal out_bus4 : out_bus4_type;                                                        -- 2D array of dout (input to tri-states)
type out_bus8_type is array (depth_num_cells-1 downto 0, 8*width_num_cells+7 downto 0) of std_logic;
signal out_bus8 : out_bus8_type;                                                        -- 2D array of dout (input to tri-states)
type out_bus16_type is array (depth_num_cells-1 downto 0, 16*width_num_cells+15 downto 0) of std_logic;
signal out_bus16 : out_bus16_type;                                                        -- 2D array of dout (input to tri-states)
signal out_en : std_logic_vector(depth_num_cells-1 downto 0);                                 -- enables for tri-states
signal wrt_en : std_logic_vector(depth_num_cells-1 downto 0);                                 -- write enables for each row of RAM cells
signal in_reg : std_logic_vector(width+15 downto 0);                                   -- used to register DIN 
signal out_reg : std_logic_vector(width+15 downto 0);                                  -- used to register DOUT
signal ad_reg : std_logic_vector(addrwidth-1 downto 0);                               -- used to register ADDR
signal low_addr : std_logic_vector(11 downto 0);                                       -- addr bits input to RAM cells (4 bits required)

begin

    -- If addrwidth < choice_width assign '0' to unused bits
    U0  : if (addrwidth = 1) generate
	    low_addr <= "00000000000" & ad_reg(0);
	end generate U0;
    U1  : if (addrwidth = 2) generate
	    low_addr <= "0000000000" & ad_reg(1 downto 0);
	end generate U1;
    U2  : if (addrwidth = 3) generate
	    low_addr <= "000000000" & ad_reg(2 downto 0);
	end generate U2;
    U3  : if (addrwidth = 4) generate
	    low_addr <= "00000000" & ad_reg(3 downto 0);
	end generate U3;
    U4  : if (addrwidth = 5) generate
	    low_addr <= "0000000" & ad_reg(4 downto 0);
	end generate U4;
    U5  : if (addrwidth = 6) generate
	    low_addr <= "000000" & ad_reg(5 downto 0);
	end generate U5;
    U6  : if (addrwidth = 7) generate
	    low_addr <= "00000" & ad_reg(6 downto 0);
	end generate U6;
    U7  : if (addrwidth = 8) generate
	    low_addr <= "0000" & ad_reg(7 downto 0);
	end generate U7;
    U8  : if (addrwidth = 9) generate
	    low_addr <= "000" & ad_reg(8 downto 0);
	end generate U8;
    U9  : if (addrwidth = 10) generate
	    low_addr <= "00" & ad_reg(9 downto 0);
	end generate U9;
    U10  : if (addrwidth = 11) generate
	    low_addr <= '0' & ad_reg(10 downto 0);
	end generate U10;
    U11  : if (addrwidth > 11) generate
	    low_addr <= ad_reg(11 downto 0);
	end generate U11;

    -- If (din_reg) register DIN using CLK
    U12  : if (din_reg) generate
        process (CLK, DIN) begin
            if (CLK = '1' and CLK'event) then
                in_reg <= ("0000000000000000" & DIN);
            end if;
        end process;
	end generate U12;
    U13  : if (not din_reg) generate
            in_reg <= ("0000000000000000" & DIN);
	end generate U13;

    -- If (dout_reg) register DOUT using OCLK
    U14  : if (dout_reg) generate
        process (OCLK, out_reg) begin
            if (OCLK = '1' and OCLK'event) then
                DOUT <= out_reg;
            end if;
        end process;
        end generate U14;
    U15  : if (not dout_reg) generate
            DOUT <= out_reg(width-1 downto 0);
	end generate U15;

    -- If (addr_reg) register ADDR using CLK
--    U16  : if (addr_reg) generate
--        process (CLK, ADDR) begin
--            if (CLK = '1' and CLK'event) then
--                ad_reg <= ADDR(addrwidth-1 downto 0);
--            end if;
--        end process;
--	end generate U16;
--    U17 : if (not addr_reg) generate
            ad_reg <= ADDR;
--	end generate U17;
	    
    -- Generate the RAM cells and select logic for RAMB4_S1
	U18 : if (choice_width = 1) generate
    	U19 : for i in (depth_num_cells - 1) downto 0 generate
	-- If (addrwidth > 12) need to create write enable and output enable select logic
        	U20 : if (addrwidth > 12) generate
                out_en(i) <= '1' when (ad_reg(addrwidth-1 downto 12) = i) else '0';
                wrt_en(i) <= WE when (ad_reg(addrwidth-1 downto 12) = i) else '0';
        	end generate U20;
	-- If (addrwidth <= 12) no write enable or output enable select logic needed
 	    	U21 : if (addrwidth <= 12) generate
	            out_en(i) <= '1';
                wrt_en(i) <= WE;
        	end generate U21;
	-- Generate the RAM cells and tri-states
        	U22 : for j in (width_num_cells - 1) downto 0 generate
            	BRAM_4096X1 : RAMB4_S1
	            port map (DI(0) => in_reg(j), ADDR => low_addr(11 downto 0), EN => '1', RST => '0', 
				WE => wrt_en(i), CLK => CLK, DO(0) => out_bus1(i,j));
                out_reg(j) <= out_bus1(i,j) when (out_en(i) = '1') else 'Z';
        	end generate U22;
     	end generate U19;
    end generate U18;    
      
    -- Generate the RAM cells and select logic for RAMB4_S2
	U23 : if (choice_width = 2) generate
    	U24 : for i in (depth_num_cells - 1) downto 0 generate
	-- If (addrwidth > 11) need to create write enable and output enable select logic
        	U25 : if (addrwidth > 11) generate
                out_en(i) <= '1' when (ad_reg(addrwidth-1 downto 11) = i) else '0';
                wrt_en(i) <= WE when (ad_reg(addrwidth-1 downto 11) = i) else '0';
        	end generate U25;
	-- If (addrwidth <= 11) no write enable or output enable select logic needed
 	    	U26 : if (addrwidth <= 11) generate
	            out_en(i) <= '1';
                wrt_en(i) <= WE;
        	end generate U26;
	-- Generate the RAM cells and tri-states
        	U27 : for j in (width_num_cells - 1) downto 0 generate
            	BRAM_2048X2 : RAMB4_S2
	            port map (DI => in_reg(2*j+1 downto 2*j), ADDR => low_addr(10 downto 0), EN => '1', RST => '0', 
				WE => wrt_en(i), CLK => CLK, DO(1) => out_bus2(i,2*j+1), DO(0) => out_bus2(i, 2*j));
                out_reg(2*j) <= out_bus2(i,2*j) when (out_en(i) = '1') else 'Z';
                out_reg(2*j+1) <= out_bus2(i,2*j+1) when (out_en(i) = '1') else 'Z';
        	end generate U27;
     	end generate U24;
    end generate U23;  

	    -- Generate the RAM cells and select logic for RAMB4_S4
	U28 : if (choice_width = 4) generate
    	U29 : for i in (depth_num_cells - 1) downto 0 generate
	-- If (addrwidth > 10) need to create write enable and output enable select logic
        	U30 : if (addrwidth > 10) generate
                out_en(i) <= '1' when (ad_reg(addrwidth-1 downto 10) = i) else '0';
                wrt_en(i) <= WE when (ad_reg(addrwidth-1 downto 10) = i) else '0';
        	end generate U30;
	-- If (addrwidth <= 10) no write enable or output enable select logic needed
 	    	U31 : if (addrwidth <= 10) generate
	            out_en(i) <= '1';
                wrt_en(i) <= WE;
        	end generate U31;
	-- Generate the RAM cells and tri-states
        	U32 : for j in (width_num_cells - 1) downto 0 generate
            	BRAM_1024X4 : RAMB4_S4
	            port map (DI => in_reg(4*j+3 downto 4*j), ADDR => low_addr(9 downto 0), EN => '1', RST => '0', 
				WE => wrt_en(i), CLK => CLK, DO(3) => out_bus4(i, 4*j+3), DO(2) => out_bus4(i,4*j+2), 
				DO(1) => out_bus4(i,4*j+1), DO(0) => out_bus4(i, 4*j));
                out_reg(4*j) <= out_bus4(i,4*j) when (out_en(i) = '1') else 'Z';
                out_reg(4*j+1) <= out_bus4(i,4*j+1) when (out_en(i) = '1') else 'Z';
                out_reg(4*j+2) <= out_bus4(i,4*j+2) when (out_en(i) = '1') else 'Z';
                out_reg(4*j+3) <= out_bus4(i,4*j+3) when (out_en(i) = '1') else 'Z';
        	end generate U32;
     	end generate U29;
    end generate U28;

	    -- Generate the RAM cells and select logic for RAMB4_S8
	U33 : if (choice_width = 8) generate
    	U34 : for i in (depth_num_cells - 1) downto 0 generate
	-- If (addrwidth > 9) need to create write enable and output enable select logic
        	U35 : if (addrwidth > 9) generate
                out_en(i) <= '1' when (ad_reg(addrwidth-1 downto 9) = i) else '0';
                wrt_en(i) <= WE when (ad_reg(addrwidth-1 downto 9) = i) else '0';
        	end generate U35;
	-- If (addrwidth <= 9) no write enable or output enable select logic needed
 	    	U36 : if (addrwidth <= 9) generate
	            out_en(i) <= '1';
                wrt_en(i) <= WE;
        	end generate U36;
	-- Generate the RAM cells and tri-states
        	U37 : for j in (width_num_cells - 1) downto 0 generate
            	BRAM_512X8 : RAMB4_S8
	            port map (DI => in_reg(8*j+7 downto 8*j), ADDR => low_addr(8 downto 0), EN => '1', RST => '0', 
				WE => wrt_en(i), CLK => CLK, DO(7) => out_bus8(i,8*j+7), DO(6) => out_bus8(i,8*j+6), 
				DO(5) => out_bus8(i,8*j+5), DO(4) => out_bus8(i,8*j+4), DO(3) => out_bus8(i,8*j+3), 
				DO(2) => out_bus8(i,8*j+2), DO(1) => out_bus8(i,8*j+1), DO(0) => out_bus8(i,8*j));
                out_reg(8*j) <= out_bus8(i,8*j) when (out_en(i) = '1') else 'Z';
                out_reg(8*j+1) <= out_bus8(i,8*j+1) when (out_en(i) = '1') else 'Z';
                out_reg(8*j+2) <= out_bus8(i,8*j+2) when (out_en(i) = '1') else 'Z';
                out_reg(8*j+3) <= out_bus8(i,8*j+3) when (out_en(i) = '1') else 'Z';
			    out_reg(8*j+4) <= out_bus8(i,8*j+4) when (out_en(i) = '1') else 'Z';
                out_reg(8*j+5) <= out_bus8(i,8*j+5) when (out_en(i) = '1') else 'Z';
                out_reg(8*j+6) <= out_bus8(i,8*j+6) when (out_en(i) = '1') else 'Z';
                out_reg(8*j+7) <= out_bus8(i,8*j+7) when (out_en(i) = '1') else 'Z';
        	end generate U37;
     	end generate U34;
    end generate U33;

	    -- Generate the RAM cells and select logic for RAMB4_S16
	U38 : if (choice_width = 16) generate
    	U39 : for i in (depth_num_cells - 1) downto 0 generate
	-- If (addrwidth > 8) need to create write enable and output enable select logic
        	U40 : if (addrwidth > 8) generate
                out_en(i) <= '1' when (ad_reg(addrwidth-1 downto 8) = i) else '0';
                wrt_en(i) <= WE when (ad_reg(addrwidth-1 downto 8) = i) else '0';
        	end generate U40;
	-- If (addrwidth <= 8) no write enable or output enable select logic needed
 	    	U41 : if (addrwidth <= 8) generate
	            out_en(i) <= '1';
                wrt_en(i) <= WE;
        	end generate U41;
	-- Generate the RAM cells and tri-states
        	U42 : for j in (width_num_cells - 1) downto 0 generate
            	BRAM_256X16 : RAMB4_S16
	            port map (DI => in_reg(16*j+15 downto 16*j), ADDR => low_addr(7 downto 0), EN => '1', RST => '0', 
				WE => wrt_en(i), CLK => CLK, DO(15) => out_bus16(i,16*j+15), DO(14) => out_bus16(i,16*j+14), 
				DO(13) => out_bus16(i,16*j+13), DO(12) => out_bus16(i,16*j+12), DO(11) => out_bus16(i,16*j+11), 
				DO(10) => out_bus16(i,16*j+10), DO(9) => out_bus16(i,16*j+9), DO(8) => out_bus16(i,16*j+8),
				DO(7) => out_bus16(i,16*j+7), DO(6) => out_bus16(i,16*j+6), DO(5) => out_bus16(i,16*j+5),
			    DO(4) => out_bus16(i,16*j+4), DO(3) => out_bus16(i,16*j+3), DO(2) => out_bus16(i,16*j+2),
		        DO(1) => out_bus16(i,16*j+1), DO(0) => out_bus16(i,16*j));
                out_reg(16*j) <= out_bus16(i,16*j) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+1) <= out_bus16(i,16*j+1) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+2) <= out_bus16(i,16*j+2) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+3) <= out_bus16(i,16*j+3) when (out_en(i) = '1') else 'Z';
			    out_reg(16*j+4) <= out_bus16(i,16*j+4) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+5) <= out_bus16(i,16*j+5) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+6) <= out_bus16(i,16*j+6) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+7) <= out_bus16(i,16*j+7) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+8) <= out_bus16(i,16*j+8) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+9) <= out_bus16(i,16*j+9) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+10) <= out_bus16(i,16*j+10) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+11) <= out_bus16(i,16*j+11) when (out_en(i) = '1') else 'Z';
			    out_reg(16*j+12) <= out_bus16(i,16*j+12) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+13) <= out_bus16(i,16*j+13) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+14) <= out_bus16(i,16*j+14) when (out_en(i) = '1') else 'Z';
                out_reg(16*j+15) <= out_bus16(i,16*j+15) when (out_en(i) = '1') else 'Z';
        	end generate U42;
     	end generate U39;
    end generate U38;
end architecture block_ram;

--
-- Last implementation is default
--
architecture select_ram of RAM_RWP is
constant num_cells : integer := ((depth - 1)/16);            -- # of RAM16X1D cells needed
type out_bus_type is array (num_cells downto 0, width-1 downto 0) of std_logic;
signal out_bus : out_bus_type;                               -- 2D array of dout (input to tri-states)
signal out_en : std_logic_vector(num_cells downto 0);        -- enables for tri-states
signal wrt_en : std_logic_vector(num_cells downto 0);        -- write enables for each row of RAM cells
signal in_reg : std_logic_vector(width-1 downto 0);          -- used to register DIN 
signal out_reg : std_logic_vector(width-1 downto 0);         -- used to register DOUT
signal ad_reg : std_logic_vector(addrwidth-1 downto 0);     -- used to register ADDR
signal low_raddr : std_logic_vector(3 downto 0);             -- raddr bits input to RAM cells (4 bits required)
signal low_waddr : std_logic_vector(3 downto 0);             -- waddr bits input to RAM cells (4 bits required)
signal addr_stg : std_logic_vector(addrwidth-1 downto 0);     -- pipeline read register
begin

    -- If addrwidth < 4 assign '0' to unused bits
    U1  : if (addrwidth = 1) generate
        low_raddr <= "000" & addr_stg(0);
        low_waddr <= "000" & ad_reg(0);
    end generate U1;
    U2  : if (addrwidth = 2) generate
        low_raddr <= "00" & addr_stg(1 downto 0);
        low_waddr <= "00" & ad_reg(1 downto 0);
    end generate U2;
    U3  : if (addrwidth = 3) generate
        low_raddr <= '0' & addr_stg(2 downto 0);
        low_waddr <= '0' & ad_reg(2 downto 0);
    end generate U3;
    U4  : if (addrwidth > 3) generate
        low_raddr <= addr_stg(3 downto 0);
        low_waddr <= ad_reg(3 downto 0);
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
--    U9  : if (addr_reg) generate
--        process (CLK, ADDR) begin
--            if (CLK = '1' and CLK'event) then
--                ad_reg <= ADDR(addrwidth-1 downto 0);
--            end if;
--        end process;
--    end generate U9;
--    U10 : if (not addr_reg) generate
            ad_reg <= ADDR;
--    end generate U10;
        
    -- pipeline staged register
    U15  : process (CLK, ad_reg)
	   begin
       if (CLK = '1' and CLK'event) then
         addr_stg <= ad_reg(addrwidth-1 downto 0);
        end if;
    end process U15;
    
    -- Generate the RAM cells and select logic
    U11 : for i in num_cells downto 0 generate
        -- If (addrwidth > 4) need to create write enable and output enable select logic
        U12 : if (addrwidth > 4) generate
                out_en(i) <= '1' when (addr_stg(addrwidth-1 downto 4) = i) else '0';
                wrt_en(i) <= WE when (ad_reg(addrwidth-1 downto 4) = i) else '0';
        end generate U12;
        -- If (addrwidth <= 4) no write enable or output enable select logic needed
        U13 : if (addrwidth <= 4) generate
                out_en(i) <= '1';
                wrt_en(i) <= WE;
            end generate U13;
    -- Gnerate the RAM cells and tri-states
        U14 : for j in (width - 1) downto 0 generate
            URAM: RAM16X1D 
                port map (D => in_reg(j), A0 => low_waddr(0), A1 => low_waddr(1), A2 => low_waddr(2),
                          A3 => low_waddr(3), DPRA0 => low_raddr(0), DPRA1 => low_raddr(1), 
                          DPRA2 => low_raddr(2), DPRA3 => low_raddr(3), WE => wrt_en(i), 
                          WCLK => CLK, DPO => out_bus(i,j));
            out_reg(j) <= out_bus(i,j) when (out_en(i) = '1') else 'Z';
            end generate U14;
        end generate U11;
                             
end architecture select_ram;
