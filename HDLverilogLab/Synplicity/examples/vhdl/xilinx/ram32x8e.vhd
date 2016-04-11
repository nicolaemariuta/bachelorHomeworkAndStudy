-- This example shows how to create a 
-- 32x8 (32 words 8 bits per word) RAM
-- using the xilinx RAM32X1 instance.
-- The example makes use of INIT values
-- which are only available in xilinx
-- E series.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ram_32x1 is
 generic (init_val : string := "00000000" );
 port (o : out std_logic; 
       d,we,a4, a3, a2, a1, a0: in std_logic);
end ram_32x1;

architecture arch1 of ram_32x1 is
component RAM32X1
	port(	O:	out std_logic;
		D,WE,A4,A3,A2,A1,A0: in std_logic);
end component;
attribute black_box: boolean;
attribute xc_props: string;
attribute black_box of RAM32X1 : component is TRUE;
attribute xc_props of u1 : label is "INIT=" & init_val;
begin

	u1: RAM32X1 port map (o,d,we,a4,a3,a2,a1,a0);
end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ram_32x8 is
 port (o: out std_logic_vector(7 downto 0);
       we: in std_logic;
       d: in std_logic_vector(7 downto 0);
       a: in std_logic_vector(4 downto 0));
end ram_32x8;

architecture arch1 of ram_32x8 is

component ram_32x1 
   generic (init_val: string := "00000000");
   port (o: out std_logic;
         d,we,a4,a3,a2,a1,a0: in std_logic);
end component;

begin
	U0: ram_32x1 generic map ("FFFFFFFF")
		    port map (o(0),d(0),we,a(4),a(3),a(2),a(1),a(0));
	U1: ram_32x1 generic map ("AABB0010")
		    port map (o(1),d(1),we,a(4),a(3),a(2),a(1),a(0));
	U2: ram_32x1 generic map ("CCDD0100")
		    port map (o(2),d(2),we,a(4),a(3),a(2),a(1),a(0));
	U3: ram_32x1 generic map ("BBBB1111")
		     port map (o(3),d(3),we,a(4),a(3),a(2),a(1),a(0));
	U4: ram_32x1 generic map ("1010AAAA")
		     port map (o(4),d(4),we,a(4),a(3),a(2),a(1),a(0));
	U5: ram_32x1 generic map ("1111BBBB")
		     port map (o(5),d(5),we,a(4),a(3),a(2),a(1),a(0));
	U6: ram_32x1 generic map ("ABCDCCCC")
		     port map (o(6),d(6),we,a(4),a(3),a(2),a(1),a(0));
	U7: ram_32x1 generic map ("FEFEDDDD")
		     port map (o(7),d(7),we,a(4),a(3),a(2),a(1),a(0));
end arch1; 
