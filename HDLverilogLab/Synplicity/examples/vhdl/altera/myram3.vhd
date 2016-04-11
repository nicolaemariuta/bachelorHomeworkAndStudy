library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity myram3 is 
port (we: in std_logic;
      data : in std_logic_vector(15 downto 0);
      address: in std_logic_vector(7 downto 0);
      q: out std_logic_vector(15 downto 0)
);
end myram3;

architecture arch1 of myram3 is

component asyn_ram_256x16 
     port (Data    : in std_logic_vector(15 downto 0);
            Address : in std_logic_vector(7 downto 0);
            WE : in std_logic;
            Q : out std_logic_vector(15 downto 0)
     );
end component;

attribute black_box: boolean;
attribute black_box of asyn_ram_256x16: component is true;

begin

u1: asyn_ram_256x16 port map(data,address,we,q);
end arch1;
