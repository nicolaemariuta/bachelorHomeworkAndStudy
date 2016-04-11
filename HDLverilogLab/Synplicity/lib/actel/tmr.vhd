-- $Header: s:/rcs/mappers/actel/lib/RCS/tmr.vhd 1.4 1999/01/06 23:47:21 nata Exp $
-- File specifying a TMR implementation of behaviorally
-- specified FF.
--
-- Include this file at the beginning of your file list.
--
library ieee;
use ieee.std_logic_1164.all;
library synplify;
use synplify.attributes.all;
entity tmr_dff is
	port (q : out std_logic; d, c : in std_logic);
end tmr_dff;

architecture implement of tmr_dff is
attribute syn_preserve of implement : architecture is true;
attribute syn_implement of implement : architecture is "dff:tmr";
signal q1, q2, q3 : std_logic;
begin
	process begin
		wait until rising_edge(c);
		q1 <= d;
		q2 <= d;
		q3 <= d;	
	end process;
	q <= (q1 and q2) or (q1 and q3) or (q2 and q3);
end implement;


library ieee;
use ieee.std_logic_1164.all;
library synplify;
use synplify.attributes.all;
entity tmr_dffr is
	port (q : out std_logic; d, c, r : in std_logic);
end tmr_dffr;

architecture implement of tmr_dffr is
attribute syn_preserve of implement : architecture is true;
attribute syn_implement of implement : architecture is "dffr:tmr";
signal q1, q2, q3 : std_logic;
begin
	process begin
		wait until rising_edge(c) or r = '1';
		if r = '1' then
			q1 <= '0';
			q2 <= '0';
			q3 <= '0';	
		else
			q1 <= d;
			q2 <= d;
			q3 <= d;	
		end if;
	end process;
	q <= (q1 and q2) or (q1 and q3) or (q2 and q3);
end implement;

library ieee;
use ieee.std_logic_1164.all;
library synplify;
use synplify.attributes.all;
entity tmr_dffs is
	port (q : out std_logic; d, c, s : in std_logic);
end tmr_dffs;

architecture implement of tmr_dffs is
attribute syn_preserve of implement : architecture is true;
attribute syn_implement of implement : architecture is "dffs:tmr";
signal q1, q2, q3 : std_logic;
begin
	process begin
		wait until rising_edge(c) or s = '1';
		if s = '1' then
			q1 <= '1';
			q2 <= '1';
			q3 <= '1';	
		else
			q1 <= d;
			q2 <= d;
			q3 <= d;	
		end if;
	end process;
	q <= (q1 and q2) or (q1 and q3) or (q2 and q3);
end implement;

library ieee;
use ieee.std_logic_1164.all;
library synplify;
use synplify.attributes.all;
entity tmr_dffrs is
	port (q : out std_logic; d, c, r, s : in std_logic);
end tmr_dffrs;

architecture implement of tmr_dffrs is
attribute syn_preserve of implement : architecture is true;
attribute syn_implement of implement : architecture is "dffrs:tmr";
signal q1, q2, q3 : std_logic;
begin
	process begin
		wait until rising_edge(c) or r = '1' or s = '1';
		if r = '1' then
			q1 <= '0';
			q2 <= '0';
			q3 <= '0';	
		elsif s = '1' then
			q1 <= '1';
			q2 <= '1';
			q3 <= '1';	
		else
			q1 <= d;
			q2 <= d;
			q3 <= d;	
		end if;
	end process;
	q <= (q1 and q2) or (q1 and q3) or (q2 and q3);
end implement;


library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity tmr_lat is
	port (q : out std_logic;
	      d,c : in std_logic);
end tmr_lat;

architecture arch1 of tmr_lat is
 attribute syn_implement of arch1 : architecture is "lat:tmr";
 attribute syn_preserve of arch1 : architecture is true;

 component DL1
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
 end component;
 attribute black_box of DL1 : component is true;


 signal q1,q2,q3 : std_logic;
begin

	U1: DL1 port map (d=>d,g=>c,q=>q1);
	U2: DL1 port map (d=>d,g=>c,q=>q2);
	U3: DL1 port map (d=>d,g=>c,q=>q3);

	q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity tmr_latr is
	port (q : out std_logic;
	      d,c,r : in std_logic);
end tmr_latr;

architecture arch1 of tmr_latr is
 attribute syn_implement of arch1 : architecture is "latr:tmr";
 attribute syn_preserve of arch1 : architecture is true;

 component DLC1
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);

 end component;
 attribute black_box of DLC1 : component is true;

	signal q1,q2,q3 : std_logic;
begin

	U1: DLC1 port map (d=>d,g=>c,clr=>r,q=>q1);
	U2: DLC1 port map (d=>d,g=>c,clr=>r,q=>q2);
	U3: DLC1 port map (d=>d,g=>c,clr=>r,q=>q3);

	q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity tmr_lats is
	port (q : out std_logic;
	      d,c,s : in std_logic);
end tmr_lats;

architecture arch1 of tmr_lats is
 attribute syn_implement of arch1 : architecture is "lats:tmr";
 attribute syn_preserve of arch1 : architecture is true;

 component DLP1
   port(
     D                              :	in    STD_ULOGIC;
     G                              :	in    STD_ULOGIC;
     PRE                            :	in    STD_ULOGIC;
     Q                              :	out   STD_ULOGIC);
 end component;
 attribute black_box of DLP1 : component is true;

	signal q1,q2,q3 : std_logic;
begin

	U1: DLP1 port map (d=>d,g=>c,pre=>s,q=>q1);
	U2: DLP1 port map (d=>d,g=>c,pre=>s,q=>q2);
	U3: DLP1 port map (d=>d,g=>c,pre=>s,q=>q3);

	q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;


library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity tmr_latrs is
	port (q : out std_logic;
	      d,c,r,s : in std_logic);
end tmr_latrs;

architecture arch1 of tmr_latrs is
 attribute syn_implement of arch1 : architecture is "latrs:tmr";
 attribute syn_preserve of arch1 : architecture is true;

 component DL2A
   port(
      D                              :	in    STD_ULOGIC;
      G                              :	in    STD_ULOGIC;
      PRE                            :	in    STD_ULOGIC;
      CLR                            :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
 end component;
 attribute black_box of DL2A : component is true;

 signal q1,q2,q3 : std_logic;
 signal r_i:std_logic;
begin
    r_i <= not r;
	U1: DL2A port map (d=>d,g=>c,pre=>s,clr=>r_i,q=>q1);
	U2: DL2A port map (d=>d,g=>c,pre=>s,clr=>r_i,q=>q2);	
	U3: DL2A port map (d=>d,g=>c,pre=>s,clr=>r_i,q=>q3);
	
    q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;
   

