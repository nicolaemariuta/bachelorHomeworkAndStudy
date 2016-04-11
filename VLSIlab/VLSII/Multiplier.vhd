LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;

entity Multiplier is
    port ( op_a : in std_logic_vector (3 downto 0);
           op_b : in std_logic_vector (3 downto 0);
           result : out std_logic_vector (7 downto 0);
           clk : in std_logic;
           reset : in std_logic;
           start : in std_logic;
           ready : out std_logic
           );
end Multiplier;

architecture Multiplier_arch of Multiplier is
    signal load_op : std_logic;
    signal shift_a : std_logic;
    signal shift_p : std_logic;   
    signal add_p_b : std_logic;
    signal end_op : std_logic;
    signal msb_a : std_logic;
    
component Multiplier_control
    port ( clk : in std_logic;
           reset : in std_logic;
           start : in std_logic;
           msb_a : in std_logic;
           ready : out std_logic;
           end_op : out std_logic;
           load_op : out std_logic;
           shift_a : out std_logic;
           shift_p : out std_logic;
           add_p_b : out std_logic );
end component;

component Multiplier_data
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
           msb_a : out std_logic );
end component;

begin
    DATA : Multiplier_data port map
    ( op_a => op_a,
      op_b => op_b,
      result => result,
      clk =>  clk,
      reset => reset,
      msb_a => msb_a,
      end_op => end_op,
      load_op => load_op,
      shift_a => shift_a,
      shift_p => shift_p,
      add_p_b => add_p_b );
    
    CONTROL : Multiplier_control port map
    ( clk =>  clk,
      reset => reset,
      start => start,
      msb_a => msb_a,
      ready => ready,
      end_op => end_op,
      load_op => load_op,
      shift_a => shift_a,
      shift_p => shift_p,
      add_p_b => add_p_b );
      
end Multiplier_arch;
