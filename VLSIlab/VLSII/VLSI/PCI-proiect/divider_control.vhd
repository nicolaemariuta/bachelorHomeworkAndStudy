LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity divider_control is
    port ( clk : in std_logic;
           reset : in std_logic;
           start : in std_logic;
           neg_p : in std_logic;
           ready : out std_logic;
           end_op : out std_logic;
           ldA : out std_logic;
	   ldB : out std_logic;
	   clrP : out std_logic;
           shA : out std_logic;
           shP : out std_logic;
           sub_p_b : out std_logic;
           add_p_b : out std_logic
           );
end divider_control;

architecture divider_control_arch of divider_control is
    
    type stare is (S0, S1, S2, S3, S4, S5, S6);
    signal current_state : stare;
    signal next_state : stare;
    signal valid : bit;
    signal count : integer;
    
    begin
        CLC : process (reset, current_state, start, neg_p, count) begin

	if (reset = '0') then
	   next_state <= S0;
	   ldA <= '0';
	   ldB <= '0';
	   clrP <= '0';
	   ready <= '0';
	   shA <= '0';
	   shp <= '0';
	   sub_p_b <= '0';
           add_p_b <= '0';

	else           
           case current_state is
               when S0 =>
                  if (start = '1') then next_state <= S1;
		  end if;
              
               when S1 =>
                   next_state <= S2;		   	
               
               when S2 =>
		  if (count = 0) then next_state <= s6;
		  else next_state <= S3;
                  end if;
              
               when S3 =>
                   next_state <= S4;
		  
	       when S4 =>
		   if (neg_p = '1') then next_state <= S5;
		      elsif (count = 0) then next_state <= S6;
			else next_state <= S2;
                   end if;

 	       when S5 =>
		  if (count = 0) then next_state <= S6;
		  else next_state <= S2;		
                  end if;

	       when S6 =>
                   next_state <= S0;
		                              
           end case;
	   end if; 
           
	   if (current_state = S1) then
		ldA <= '1';
		ldB <= '1';
		clrP <= '1';
	   else
		ldA <= '0';
		ldB <= '0';
		clrP <= '0';
           end if;

	   if (current_state = S2) then shP <= '1';
	   else shP <= '0';
	   end if;

	   if (current_state = S3) then sub_p_b <= '1';
	   else sub_p_b <= '0';
	   end if;

	   if (current_state = S4) then shA <= '1';
	   else shA <= '0';
	   end if;

	   if (current_state = S5) then add_p_b <= '1';
	   else add_p_b <= '0';
	   end if;

	   if (current_state = S6) then ready <= '1';
	   else ready <= '0';
	   end if;

       end process CLC;
    
       REG : process (clk) begin
          if ((not clk'stable) and (clk = '1')) then
              current_state <= next_state;
          end if; 
       end process REG;
       
       CONTOR : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then count <= 0;
                  elsif (current_state = S0) then count <= 8;
                     elsif (current_state = S2) then count <= count - 1;
               end if;
           end if;
       end process CONTOR;
            
end divider_control_arch;