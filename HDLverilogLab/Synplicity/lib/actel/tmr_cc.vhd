library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity tmr_dfp1_dff is
	port (q : out std_logic;
	      d,c : in std_logic);
end tmr_dfp1_dff;

architecture arch1 of tmr_dfp1_dff is
 attribute syn_implement of arch1 : architecture is "dff:tmr_cc";
 attribute syn_preserve of arch1 : architecture is true;

 component DFP1
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DFP1 : component is true;
   
	signal q1,q2,q3 : std_logic;
begin

	U1: DFP1 port map (d=>d,clk=>c,pre => '0',q=>q1);
	U2: DFP1 port map (d=>d,clk=>c,pre => '0',q=>q2);
	U3: DFP1 port map (d=>d,clk=>c,pre => '0',q=>q3);

	q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;



library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;


entity dfpc_dffr is
	port (q : out std_logic;
	      d,c,r : in std_logic);
end dfpc_dffr;

architecture arch1 of dfpc_dffr is
 attribute syn_implement of arch1 : architecture is "dffr:tmr_cc";
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
 
 signal q1,q2,q3 : std_logic;
 signal r_n : std_logic;
begin
	r_n <= not r;
	U1: DFPC port map (d=>d, clk=>c, clr=> r_n, pre=>'0', q=>q1);
	U2: DFPC port map (d=>d, clk=>c, clr=> r_n, pre=>'0', q=>q2);
	U3: DFPC port map (d=>d, clk=>c, clr=> r_n, pre=>'0', q=>q3);
	
    q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;


library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity tmr_dfp1_dffs is
	port (q : out std_logic;
	      d,c,s : in std_logic);
end tmr_dfp1_dffs;

architecture arch1 of tmr_dfp1_dffs is
 attribute syn_implement of arch1 : architecture is "dffs:tmr_cc";
 attribute syn_preserve of arch1 : architecture is true;

 component DFP1
   port(
      D                              :	in    STD_LOGIC;
      CLK                            :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DFP1 : component is true;
	signal q1,q2,q3 : std_logic;
begin

	U1: DFP1 port map (d=>d,clk=>c,pre=>s,q=>q1);
	U2: DFP1 port map (d=>d,clk=>c,pre=>s,q=>q2);
	U3: DFP1 port map (d=>d,clk=>c,pre=>s,q=>q3);

	q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;
library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity dfpc_dffrs is
	port (q : out std_logic;
	      d,c,r,s : in std_logic);
end dfpc_dffrs;

architecture arch1 of dfpc_dffrs is
 attribute syn_implement of arch1 : architecture is "dffrs:tmr_cc";
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
 
 signal q1,q2,q3 : std_logic;
 signal r_i: std_logic;
begin
    r_i <= not r;
	U1: DFPC port map (d=>d,clk=>c,clr=>r_i,pre=>s,q=>q1);
	U2: DFPC port map (d=>d,clk=>c,clr=>r_i,pre=>s,q=>q2);	
	U3: DFPC port map (d=>d,clk=>c,clr=>r_i,pre=>s,q=>q3);
	
    q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity dlc1_lat is
	port (q : out std_logic;
	      d,c : in std_logic);
end dlc1_lat;

architecture arch1 of dlc1_lat is
 attribute syn_implement of arch1 : architecture is "lat:tmr_cc";
 attribute syn_preserve of arch1 : architecture is true;

 component DLP1
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
 end component;
 attribute black_box of DLP1 : component is true;
     
 signal q1,q2,q3 : std_logic;
begin

	U1: DLP1 port map (d=>d,g=>c,pre => '0',q=>q1);
	U2: DLP1 port map (d=>d,g=>c,pre => '0',q=>q2);
	U3: DLP1 port map (d=>d,g=>c,pre => '0',q=>q3);

	q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;

library IEEE;
use IEEE.std_logic_1164.all;
library synplify;
use synplify.attributes.all;

entity tmr_dlc1_latr is
	port (q : out std_logic;
	      d,c,r : in std_logic);
end tmr_dlc1_latr;

architecture arch1 of tmr_dlc1_latr is
 attribute syn_implement of arch1 : architecture is "latr:tmr_cc";
 attribute syn_preserve of arch1 : architecture is true;
 
 component DLC1
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      CLR                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
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

entity tmr_dlp1_lats is
	port (q : out std_logic;
	      d,c,s : in std_logic);
end tmr_dlp1_lats;

architecture arch1 of tmr_dlp1_lats is
 attribute syn_implement of arch1 : architecture is "lats:tmr_cc";
 attribute syn_preserve of arch1 : architecture is true;

 component DLP1
   port(
      D                              :	in    STD_LOGIC;
      G                              :	in    STD_LOGIC;
      PRE                            :	in    STD_LOGIC;
      Q                              :	out   STD_LOGIC);
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

entity dl2a_latrs is
	port (q : out std_logic;
	      d,c,r,s : in std_logic);
end dl2a_latrs;

architecture arch1 of dl2a_latrs is
 attribute syn_implement of arch1 : architecture is "latrs:tmr_cc";
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
 signal q1,q2,q3 : std_logic;
 signal r_i:std_logic;
begin
	r_i <= not r;
	U1: DL2A port map (d=>d,g=>c,pre=>s,clr=>r_i,q=>q1);
	U2: DL2A port map (d=>d,g=>c,pre=>s,clr=>r_i,q=>q2);	
	U3: DL2A port map (d=>d,g=>c,pre=>s,clr=>r_i,q=>q3);
	
    q <= (q1 and q2) or (q2 and q3) or (q1 and q3);

end arch1;
