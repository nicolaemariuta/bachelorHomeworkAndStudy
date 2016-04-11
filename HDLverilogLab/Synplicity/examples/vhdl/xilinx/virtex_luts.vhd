--
-- Demonstrate direction construction of luts with
-- Programming for Virtex
--
library ieee;
use ieee.std_logic_1164.all;
library virtex;
use virtex.components.all;
entity top is
	port(
	     w1, w2, w3, w4 : out std_logic;
	     z1, z2, z3, z4 : out std_logic;
	     a : in std_logic_vector(3 downto 0));
end entity top;

architecture test of top is
begin

L1 : LUT1 generic map(INIT => "01") 
	port map(O => z1, I0 => a(0));

L2 : LUT2 generic map(INIT => "0110") 
	port map(O => z2, I0 => a(0), I1 => a(1));

L3 : LUT3 generic map(INIT => "11110110") 
	port map(O => z3, I0 => a(0), I1 => a(1), I2 => a(2));

L4 : LUT4 generic map(INIT => X"8421") 
	port map(O => z4, I0 => a(0), I1 => a(1), I2 => a(2), I3 => a(3));

M1 : LUT1 generic map(INIT => "10") 
	port map(O => w1, I0 => a(0));

M2 : LUT2 generic map(INIT => "1001") 
	port map(O => w2, I0 => a(0), I1 => a(1));

M3 : LUT3 generic map(INIT => "11010110") 
	port map(O => w3, I0 => a(0), I1 => a(1), I2 => a(2));

M4 : LUT4 generic map(INIT => X"9421") 
	port map(O => w4, I0 => a(0), I1 => a(1), I2 => a(2), I3 => a(3));

end architecture test;
