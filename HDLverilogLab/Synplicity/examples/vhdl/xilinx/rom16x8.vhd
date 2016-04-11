-- This example shows how to create a
-- 16x8 ROM using xilinx ROM16x1 component.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity rom_16x1 is
 generic (init_val : string := "0000" );
 port (o : out std_logic; 
       a3, a2, a1, a0: in std_logic);
end rom_16x1;

architecture arch1 of rom_16x1 is
component ROM16X1
	port(	O:	out std_logic;
		A3,A2,A1,A0: in std_logic);
end component;
attribute black_box: boolean;
attribute xc_props: string;
attribute black_box of ROM16X1 : component is TRUE;
attribute xc_props of u1 : label is "INIT=" & init_val;
begin

	u1: ROM16X1 port map (o,a3,a2,a1,a0);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity rom_16x8 is
 port (o: out std_logic_vector(7 downto 0);
       a: in std_logic_vector(3 downto 0));
end rom_16x8;

architecture arch1 of rom_16x8 is

component rom_16x1 
   generic (init_val: string := "0000");
   port (o: out std_logic;
         a3,a2,a1,a0: in std_logic);
end component;

begin
	U0: rom_16x1 generic map ("FFFF")
		    port map (o(0),a(3),a(2),a(1),a(0));
	U1: rom_16x1 generic map ("0010")
		    port map (o(1),a(3),a(2),a(1),a(0));
	U2: rom_16x1 generic map ("0100")
		    port map (o(2),a(3),a(2),a(1),a(0));
	U3: rom_16x1 generic map ("1111")
		     port map (o(3),a(3),a(2),a(1),a(0));
	U4: rom_16x1 generic map ("AAAA")
		     port map (o(4),a(3),a(2),a(1),a(0));
	U5: rom_16x1 generic map ("BBBB")
		     port map (o(5),a(3),a(2),a(1),a(0));
	U6: rom_16x1 generic map ("CCCC")
		     port map (o(6),a(3),a(2),a(1),a(0));
	U7: rom_16x1 generic map ("DDDD")
		     port map (o(7),a(3),a(2),a(1),a(0));
end arch1; 
