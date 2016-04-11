-- $Header: s:/rcs/mappers/actel/lib/RCS/cc.vhd 1.7 1999/01/07 00:17:53 nata Exp $

library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity radhard_dff is
	port (q : out std_logic;
	      d,c : in std_logic);
end radhard_dff;

architecture arch1 of radhard_dff is
 attribute syn_implement of arch1 : architecture is "dff:cc";
 attribute syn_preserve of arch1 : architecture is true;

 component DFP1
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DFP1 : component is true;
begin

	U1: DFP1 port map (d=>d,clk=>c,pre =>'0',q=>q);

end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity radhard_dffr is
	port (q : out std_logic;
	      d,c,r : in std_logic);
end radhard_dffr;

architecture arch1 of radhard_dffr is
 attribute syn_implement of arch1 : architecture is "dffr:cc";
 attribute syn_preserve of arch1 : architecture is true;

 component DFPC
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DFPC : component is true;
begin
	U1: DFPC port map (d=>d,clk=>c,clr=> not r,pre=>'0',q=>q);

end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity radhard_dffs is
	port (q : out std_logic;
	      d,c,s : in std_logic);
end radhard_dffs;

architecture arch1 of radhard_dffs is
 attribute syn_implement of arch1 : architecture is "dffs:cc";
 attribute syn_preserve of arch1 : architecture is true;
 component DFP1
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DFP1 : component is true;
 begin

	U1: DFP1 port map (d=>d,clk=>c,pre=>s,q=>q);

end arch1;



library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;


entity radhard_dffrs is
	port (q : out std_logic;
	      d,c,r,s : in std_logic);
end radhard_dffrs;

architecture arch1 of radhard_dffrs is
 attribute syn_implement of arch1 : architecture is "dffrs:cc";
 attribute syn_preserve of arch1 : architecture is true;
 
 component DFPC
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DFPC : component is true;
 
begin
	U1: DFPC port map (d=>d,clk=>c,clr=>not r,pre=>s,q=>q);

end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity radhard_lat is
	port (q : out std_logic;
	      d,c : in std_logic);
end radhard_lat;

architecture arch1 of radhard_lat is
 attribute syn_implement of arch1 : architecture is "lat:cc";
 attribute syn_preserve of arch1 : architecture is true;
 component DLP1
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DLP1 : component is true;
 
begin

	U1: DLP1 port map (d=>d,g=>c,pre =>'0',q=>q);

end arch1;


library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity radhard_latr is
	port (q : out std_logic;
	      d,c,r : in std_logic);
end radhard_latr;

architecture arch1 of radhard_latr is
 attribute syn_implement of arch1 : architecture is "latr:cc";
 attribute syn_preserve of arch1 : architecture is true;

 component DLC1
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DLC1 : component is true;
 
begin

	U1: DLC1 port map (d=>d,g=>c,clr=>r,q=>q);

end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity radhard_lats is
	port (q : out std_logic;
	      d,c,s : in std_logic);
end radhard_lats;

architecture arch1 of radhard_lats is
 attribute syn_implement of arch1 : architecture is "lats:cc";
 attribute syn_preserve of arch1 : architecture is true;

 component DLP1
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DLP1 : component is true;

begin

	U1: DLP1 port map (d=>d,g=>c,pre=>s,q=>q);

end arch1;



library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity radhard_latrs is
	port (q : out std_logic;
	      d,c,r,s : in std_logic);
end radhard_latrs;

architecture arch1 of radhard_latrs is
 attribute syn_implement of arch1 : architecture is "latrs:cc";
 attribute syn_preserve of arch1 : architecture is true;

 component DL2A
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DL2A : component is true;
begin
	U1: DL2A port map (d=>d,g=>c,pre=>s,clr=>not r,q=>q);

end arch1;

