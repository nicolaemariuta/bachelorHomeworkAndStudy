LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity divider is
    port ( a : in std_logic_vector (7 downto 0);
           b : in std_logic_vector (7 downto 0);
           rest : out std_logic_vector (8 downto 0);
	   cat : out std_logic_vector (7 downto 0);
           clk : in std_logic;
           reset : in std_logic;
           start : in std_logic;
           ready : out std_logic
           );
end divider;

architecture divider_arch of divider is
    signal ldA : std_logic;
    signal ldB : std_logic;
    signal clrP : std_logic;
    signal shA : std_logic;
    signal shP : std_logic;
    signal sub_p_b : std_logic;
    signal add_p_b : std_logic;
    signal end_op : std_logic;
    signal neg_p : std_logic;
    
component divider_control
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
           add_p_b : out std_logic );
end component;

component divider_data
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
           neg_p : out std_logic );
end component;

begin
    DATA : divider_data port map
    ( a => a,
      b => b,
      rest => rest,
      cat => cat,
      clk =>  clk,
      reset => reset,
      neg_p => neg_p,
      end_op => end_op,
      ldA => ldA,
      ldB => ldB,
      clrP => clrP,
      shA => shA,
      shP => shP,
      sub_p_b => sub_p_b,
      add_p_b => add_p_b );
    
    CONTROL : divider_control port map
    ( clk =>  clk,
      reset => reset,
      start => start,
      neg_p => neg_p,
      ready => ready,
      end_op => end_op,
      ldA => ldA,
      ldB => ldB,
      clrP => clrP,
      shA => shA,
      shP => shP,
      sub_p_b => sub_p_b,
      add_p_b => add_p_b );
      
end divider_arch;