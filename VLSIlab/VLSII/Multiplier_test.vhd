LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity Multiplier_test is
end Multiplier_test;

architecture Multiplier_test_arch of Multiplier_test is
    component Multiplier is
        port (   op_a : in std_logic_vector (3 downto 0);
                 op_b : in std_logic_vector (3 downto 0);
                 result : out std_logic_vector (7 downto 0);
                 clk : in std_logic;
                 reset : in std_logic;
                 start : in std_logic;
                 ready : out std_logic );
    end component;
    
    signal ck : std_logic := '0';
    signal op_a : std_logic_vector (3 downto 0);
    signal op_b : std_logic_vector (3 downto 0);
    signal result : std_logic_vector (7 downto 0);
    signal clk : std_logic;
    signal reset : std_logic;
    signal start : std_logic;
    signal ready : std_logic;
    
    begin
        DIV : Multiplier port map 
         ( op_a => op_a,
           op_b => op_b,
           result => result,
           start => start,
           ready => ready,
           reset => reset,
           clk => clk );
           
        ck <= not ck after 5 ns;
        clk <= ck;
        op_a <= "0000", "1110" after 40 ns;
        op_b <= "0000", "1100" after 40 ns;
        start <= '0', '1' after 60 ns, '0' after 70 ns;
        reset <= '0', '1' after 10 ns;
end Multiplier_test_arch;