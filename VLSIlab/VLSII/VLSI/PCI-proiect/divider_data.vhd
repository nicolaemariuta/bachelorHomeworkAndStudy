LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

USE IEEE.std_logic_arith.ALL;

USE IEEE.std_logic_unsigned.ALL;

entity divider_data is
    port ( a : in std_logic_vector (7 downto 0);
           b : in std_logic_vector (7 downto 0);
           rest : out std_logic_vector (8 downto 0);
	   cat : out std_logic_vector (7 downto 0);
           clk : in std_logic;
           reset : in std_logic;
           ldA : in std_logic;
	   ldB : in std_logic;
	   clrP : in std_logic;
           end_op : in std_logic;
           shA : in std_logic;
           shP : in std_logic;
           sub_p_b : in std_logic;
           add_p_b : in std_logic;
           neg_p : out std_logic
           );
end divider_data;

architecture divider_data_arch of divider_data is
    
    signal op_a : std_logic_vector (7 downto 0);
    signal op_b : std_logic_vector (7 downto 0);
    signal p : std_logic_vector (8 downto 0);
    signal c : std_logic_vector (7 downto 0);
    
    begin
        reg_a : process (clk) begin
           if(( not clk'stable ) and ( clk = '1' )) then
               if (reset = '0') then op_a <= "00000000";
                  elsif (ldA = '1') then op_a <= a;
                     elsif (shA = '1') then 
                        op_a <= op_a(6 downto 0) & (not p(8));
                        
               end if;
           end if;
        end process reg_a;
        
        reg_b : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then op_b <= "00000000";
                  elsif (ldB = '1') then op_b <= b;
              end if;
           end if;
        end process reg_b;
        
        reg_p : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then p <= "000000000";
                  elsif (clrP = '1') then p <= "000000000";
                     elsif (shP = '1') then p <= p(7 downto 0) & op_a(7);
                        elsif (sub_p_b = '1') then 
                           p <= p - op_b;
                           elsif (add_p_b = '1') then p <= p + op_b;
                       end if;
           end if;
        end process reg_p;
        
        neg_p <= p(8);
	rest <= p;
        cat <= op_a;
        
    end divider_data_arch;