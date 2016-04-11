LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity divider_test is
end divider_test;

architecture divider_test_arch of divider_test is
    component divider is
        port (   a : in std_logic_vector (7 downto 0);
                 b : in std_logic_vector (7 downto 0);
                 rest : out std_logic_vector (8 downto 0);
		 cat : out std_logic_vector (7 downto 0);
                 clk : in std_logic;
                 reset : in std_logic;
                 start : in std_logic;
                 ready : out std_logic );
    end component;
    
    signal ck : std_logic := '0';
    signal a : std_logic_vector (7 downto 0);
    signal b : std_logic_vector (7 downto 0);
    signal rest : std_logic_vector (8 downto 0);
    signal cat : std_logic_vector (7 downto 0); 
    signal clk : std_logic;
    signal reset : std_logic;
    signal start : std_logic;
    signal ready : std_logic;
    
    begin
        DIV : divider port map 
         ( a => a,
           b => b,
           rest => rest,
	   cat => cat,
           start => start,
           ready => ready,
           reset => reset,
           clk => clk );
           
        ck <= not ck after 5 ns;
        clk <= ck;
        a <= "00000000", "01001011" after 40 ns, "01010101" after 500 ns;
        b <= "00000000", "00001010" after 40 ns, "00001010" after 500 ns;
        start <= '0', '1' after 60 ns, '0' after 70 ns, '1' after 530 ns, '0' after 540 ns;
        reset <= '0', '1' after 10 ns;
end divider_test_arch;