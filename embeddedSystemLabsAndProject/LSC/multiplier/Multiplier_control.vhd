LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;


entity Multiplier_control is
    port ( clk : in std_logic;
           reset : in std_logic;
           start : in std_logic;
           msb_a : in std_logic;
           ready : out std_logic;
           end_op : out std_logic;
           load_op : out std_logic;
           shift_a : out std_logic;
           shift_p : out std_logic;
           add_p_b : out std_logic
           );
end Multiplier_control;

architecture Multiplier_control_arch of Multiplier_control is
    
    type stare is (INIT, SETUP, VERIFICARE, SHIFTA, SHIFTP, ENDOP, ADD);
    signal curenta : stare;
    signal urmatoare: stare;
    signal valid : std_logic;
    signal count : integer;
    
    begin
        CLC : process (reset, curenta, start, msb_a, count) begin
           
           case curenta is
               when INIT =>
                   if (reset = '0') then urmatoare <= INIT;
                      elsif (start = '1') then urmatoare <= SETUP;
		      else urmatoare <= INIT;	
                   end if;
              
               when SETUP =>
                   if (reset = '0') then urmatoare <= INIT;
                      else urmatoare <= SHIFTP;
                   end if;
              			  
               when VERIFICARE =>
                   if (reset = '0') then urmatoare <= INIT;
                         elsif (msb_a = '1') then urmatoare <= ADD;
						 else urmatoare <= SHIFTA;						 
                  end if;
			  
               when SHIFTP =>
                   if (reset = '0') then urmatoare <= INIT;
                         else urmatoare <= VERIFICARE;
                   end if;
                                
               when SHIFTA =>
                  if (reset = '0') then urmatoare <= INIT;
				  elsif (count = 0) then urmatoare <= ENDOP;
				  else urmatoare <= SHIFTP;
                 end if;
				 
               when ADD =>
                   if (reset = '0') then urmatoare <= INIT;
                         else urmatoare <= SHIFTA;
                   end if;
               
               when ENDOP =>
                   if (reset = '0') then urmatoare <= INIT;
                      else urmatoare <= INIT; 
                   end if;                                
           end case; 
           
           if (curenta = SETUP) then load_op <= '1';
              else load_op <= '0';
           end if;
           
           if (curenta = SHIFTP)  then shift_p <= '1';
              else shift_p <= '0';
           end if;
                     
           if (curenta = SHIFTA) then shift_a <= '1';
              else shift_a <= '0';
           end if;
           
           if (curenta = ADD) then add_p_b <= '1';
              else add_p_b <= '0';
           end if;
           
           if (curenta = ENDOP) then end_op <= '1';
              else end_op <= '0';
           end if;     
                 
       end process CLC;
    
       REG : process (clk) begin
          if ((not clk'stable) and (clk = '1')) then
              curenta <= urmatoare;
          end if; 
       end process REG;
       
       CONTOR : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then count <= 0;
                  elsif (curenta = INIT) then count <= 4;
                     elsif (curenta = SHIFTP) then count <= count - 1;
               end if;
           end if;
       end process CONTOR;
       
       VALIDARE : process (clk) begin
          if ((not clk'STABLE ) and (clk = '1')) then
              if (reset = '0') then valid <= '0';
                 elsif (curenta = ENDOP) then valid <= '1';
                    elsif (curenta = INIT) then valid <='0';
              end if;
          end if;
       end process VALIDARE;
        
      ready <= valid;
      
end Multiplier_control_arch;
