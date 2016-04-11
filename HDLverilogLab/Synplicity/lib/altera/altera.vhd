--
-- Mapping component library for Altera CPLDS
-- Copyright 1996 Synplicity, Inc.
-- All Rights Reserved.
--
library ieee;
use ieee.std_logic_1164.all;
package maxplus2 is
component LCELL
	port(A_IN : in std_logic; A_OUT : out std_logic);
end component;
component SOFT
	port(A_IN : in std_logic; A_OUT : out std_logic);
end component;
component GLOBAL
	port(A_IN : in std_logic; A_OUT : out std_logic);
end component;
component CASCADE
	port(A_IN : in std_logic; A_OUT : out std_logic);
end component;
component CARRY
	port(A_IN : in std_logic; A_OUT : out std_logic);
end component;

attribute black_box: boolean;
attribute black_box of others : component is true;
attribute black_box of maxplus2 : package is true;

end maxplus2;
