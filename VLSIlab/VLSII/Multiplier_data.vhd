LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;

entity Multiplier_data is
    port ( op_a : in std_logic_vector (3 downto 0);
           op_b : in std_logic_vector (3 downto 0);
           result : out std_logic_vector (7 downto 0);
           clk : in std_logic;
           reset : in std_logic;
           load_op : in std_logic;
           end_op : in std_logic;
           shift_a : in std_logic;
           shift_p : in std_logic;
           add_p_b : in std_logic;
           msb_a : out std_logic
           );
end Multiplier_data;

architecture Multiplier_data_arch of Multiplier_data is
    
    signal a : std_logic_vector (3 downto 0);
    signal b : std_logic_vector (3 downto 0);
    signal p : std_logic_vector (7 downto 0);
    signal r : std_logic_vector (7 downto 0);
    
    begin
        reg_a : process (clk) begin
           if(( not clk'stable ) and ( clk = '1' )) then
               if (reset = '0') then a <= "0000";
				end if;				
                  if (load_op = '1') then a <= op_a;
				  end if;
					msb_a <= a(3);
                     if (shift_a = '1') then 
                        a <= a(2 downto 0) & '0';                        
               end if;
           end if;
        end process reg_a;
        
        reg_b : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then b <= "0000";
                  elsif (load_op = '1') then b <= op_b;
              end if;
           end if;
        end process reg_b;
        
        reg_p : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then p <= "00000000";
                  elsif (load_op = '1') then p <= "00000000";
                     elsif (shift_p = '1') then p <= p(6 downto 0) & '0';
					   elsif (add_p_b = '1') then p <= p + b;
						end if;
           end if;
        end process reg_p;
        
        reg_r : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then r <= "00000000";
                  elsif (load_op = '1') then r <= "00000000";
                     elsif (end_op = '1') then 
                        r <= p(3 downto 0);
                 end if;
           end if;
        end process reg_r;
                
        result <= r;
        
    end Multiplier_data_arch;