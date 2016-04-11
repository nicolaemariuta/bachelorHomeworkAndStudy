library ieee;
use ieee.std_logic_1164.all;

package components is

------------------------------------------------------------------------

component RAM64X18 is
   port (WA, RA : in std_logic_vector (5 downto 0);
         WD : in std_logic_vector (17 downto 0);
         WE, RE, WCLK, RCLK, ASYNCRD : in std_logic;
         RD : out std_logic_vector (17 downto 0) );
end component;

------------------------------------------------------------------------

component RAM128X9 is
   port (WA, RA : in std_logic_vector (6 downto 0);
         WD : in std_logic_vector (8 downto 0);
         WE, RE, WCLK, RCLK, ASYNCRD : in std_logic;
         RD : out std_logic_vector (8 downto 0) );
end component;

------------------------------------------------------------------------

component RAM256X4
   port (WA, RA : in std_logic_vector (7 downto 0);
         WD : in std_logic_vector (3 downto 0);
         RD : out std_logic_vector (3 downto 0);
         WE, RE, WCLK, RCLK, ASYNCRD : in std_logic);
end component;

------------------------------------------------------------------------

component RAM512X2 is
  port (WA, RA : in std_logic_vector (8 downto 0);
        WD : in std_logic_vector (1 downto 0);
        WE, RE, WCLK, RCLK, ASYNCRD : in std_logic;
        RD : out std_logic_vector (1 downto 0) );
end component;

------------------------------------------------------------------------

end components;

library ieee;
use ieee.std_logic_1164.all;

library pasic4;
use pasic4.components.all;

--package body components is

------------------------------------------------------------------------

entity RAM64X18 is
   port (WA, RA : in std_logic_vector (5 downto 0);
         WD : in std_logic_vector (17 downto 0);
         WE, RE, WCLK, RCLK, ASYNCRD : in std_logic;
         RD : out std_logic_vector (17 downto 0) );
   attribute syn_isclock : boolean;		
   attribute syn_isclock of WCLK : signal is true;	
   attribute syn_isclock of RCLK : signal is true;
end RAM64X18;

architecture arch of RAM64X18 is
attribute black_box : boolean;
attribute syn_macro : integer;
attribute black_box of arch : architecture is true;
attribute syn_macro of arch : architecture is 1;

begin
end arch;

------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library pasic4;
use pasic4.components.all;


entity RAM128X9 is
   port (WA, RA : in std_logic_vector (6 downto 0);
         WD : in std_logic_vector (8 downto 0);
         WE, RE, WCLK, RCLK, ASYNCRD : in std_logic;
         RD : out std_logic_vector (8 downto 0) );
   attribute syn_isclock : boolean;		
   attribute syn_isclock of WCLK : signal is true;	
   attribute syn_isclock of RCLK : signal is true;
end RAM128X9;

architecture arch of RAM128X9 is
attribute black_box : boolean;
attribute syn_macro : integer;
attribute black_box of arch : architecture is true;
attribute syn_macro of arch : architecture is 1;

begin
end arch;

------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library pasic4;
use pasic4.components.all;


entity RAM256X4 is
   port (WA, RA : in std_logic_vector (7 downto 0);
         WD : in std_logic_vector (3 downto 0);
         RD : out std_logic_vector (3 downto 0);
         WE, RE, WCLK, RCLK, ASYNCRD : in std_logic);
   attribute syn_isclock : boolean;		
   attribute syn_isclock of WCLK : signal is true;	
   attribute syn_isclock of RCLK : signal is true;
end RAM256X4;

architecture arch of RAM256X4 is
attribute black_box : boolean;
attribute syn_macro : integer;
attribute black_box of arch : architecture is true;
attribute syn_macro of arch : architecture is 1;
begin
end arch;

------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library pasic4;
use pasic4.components.all;


entity RAM512X2 is
  port (WA, RA : in std_logic_vector (8 downto 0);
        WD : in std_logic_vector (1 downto 0);
        WE, RE, WCLK, RCLK, ASYNCRD : in std_logic;
        RD : out std_logic_vector (1 downto 0) );
   attribute syn_isclock : boolean;		
   attribute syn_isclock of WCLK : signal is true;	
   attribute syn_isclock of RCLK : signal is true;
end RAM512X2;

architecture arch of RAM512X2 is
attribute black_box : boolean;
attribute syn_macro : integer;
attribute black_box of arch : architecture is true;
attribute syn_macro of arch : architecture is 1;
begin
end arch;

------------------------------------------------------------------------

