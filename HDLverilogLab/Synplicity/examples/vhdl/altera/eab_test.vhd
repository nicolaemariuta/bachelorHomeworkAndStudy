-- Example that shows how to map logic into
-- EABs for altera Flex10k devices. 

library IEEE;
USE IEEE.std_logic_1164.all;

entity mymux is
 port (in1: in std_logic_vector(9 downto 0);
        sel : in std_logic;
       dout : out std_logic_vector(9 downto 0));
end mymux;

architecture behave of mymux is
begin

	dout <= in1 when sel = '1' else
		(NOT in1) when sel = '0' else
			(others => 'X');
end behave;

library IEEE;
USE IEEE.std_logic_1164.all;

entity eab_test is 
  port (a: in std_logic_vector(9 downto 0);
		s: in std_logic;
        o: out std_logic_vector(9 downto 0));
end eab_test;

architecture arch1 of eab_test is
	component mymux is
	port (in1: in std_logic_vector(9 downto 0);
 	      in2: in std_logic_vector(9 downto 0);
          sel : in std_logic;
          dout: out std_logic_vector(9 downto 0));
	end component mymux;

attribute altera_implement_in_eab : boolean;
attribute altera_implement_in_eab of U1: label is true;
	
begin	
		
        U1: mymux port map (in1=>a, sel=>s, dout=>o);

end arch1;
