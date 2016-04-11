-- Example that shows how to apply pin locations
-- for designs targeting altera devices.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity adder8 is
        generic (num_bits : integer := 8) ;
        port ( a,b:      in std_logic_vector (num_bits -1 downto 0);
               result:     out std_logic_vector(num_bits -1 downto 0) );
attribute altera_chip_pin_lc : string;

attribute altera_chip_pin_lc of result : signal is "@17,@166,@191,@152,@15,@148,@147,@149";

attribute altera_chip_pin_lc of a : signal is "adder8@194,adder8@177,adder8@70,adder8@96,adder8@109,adder8@6,adder8@174,adder8@204";

end adder8;

architecture behave of adder8 is

begin
        result <= a + b;
end;
