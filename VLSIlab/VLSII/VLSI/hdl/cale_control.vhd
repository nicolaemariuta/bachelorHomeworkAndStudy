--5. Algoritm de impartire fara restaurare (pozitiv/negativ)
------------
---	Calea de control
--------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity cale_control is
	port (
	clk     : IN bit;
    reset   : IN bit;
    doiter  : OUT bit;
    load    : OUT bit;
	start   : IN bit;
    valid   : OUT bit
	);
end cale_control;



architecture cc_beh of cale_control is

   signal cnt : bit_vector(4 downto 0);
   signal sr  : bit;
   
begin

process (clk)
   begin
   if (clk'event AND clk = '1')	then
   if ((NOT(reset)) = '1')      then cnt <= "00000";
   elsif (cnt = "00101")        then cnt <= "00000";
   elsif (start='1' OR sr='1')  then cnt <= "00001" + cnt;
   end if;
   end if;
		 
   end process;
   
   process (clk)
   begin
   if (clk'event AND clk = '1')	then
   if ((NOT(reset)) = '1') then sr <= '0';
   elsif (cnt = "00101")   then sr <= '0';
   elsif (start = '1')     then sr <= '1';
   end if;
   end if;
   end process;
   
   valid  <= NOT(sr) AND reset;
   doiter <= sr OR start;
   load   <= start;

end cc_beh;