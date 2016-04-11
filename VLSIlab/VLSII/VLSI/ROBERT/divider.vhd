--
--
--
--
--                                             +--------+   +---+
--                      +---------------------+|Clog Gen|++ | A |+-+
--                      |                      +--------+ | +---+  |
--                      |                        +------+ | +---+  |
--                     +|-----------------------+|Reset |+| | B |+ |
--                     ||                        +------+|| +---+| |
--                     ||                                |+-----+| |
--                     ||                                +-----+|| |
--                     || +-------------------------+          ||| |   +-------------------------+
--                     || | Divider Control Module  |          ||| |   | Divider Data Module     |
--                     || |-------------------------|          ||| |   |-------------------------|       +------+
--                     |+>|clk                 ready|+         |+|-|-->|clk                result|+----->|Result|
--           +-----+   +->|reset              end_op|+--------++-|-|-->|reset             neg_p_p|+----+ +------+
--           |Start|+---->|start             load_op|+-------+|  | +-->|op_a              neg_p_r|+--+ |
--           +-----+   +->|neg_p_p           shift_a|+------+||  +---->|op_b                     |   | |
--                     |+>|neg_p_r       shift_p_poz|+-----+||+------->|load_op                  |   | |
--                     || |              shift_p_neg|+----+||+-------->|end_op                   |   | |
--                     || |                  sub_p_b|+---+||+--------->|shift_a                  |   | |
--                     || |                  add_p_b|+--+||+---------->|shift_p_neg              |   | |
--                     || |                add_final|+-+||+----------->|shift_p_poz              |   | |
--                     || +-------------------------+| ||+------------>|sub_p_b                  |   | |
--                     ||                            | |+------------->|add_p_b                  |   | |
--                     ||                            | +-------------->|add_final                |   | |
--                     ||                            |                 +-------------------------+   | |
--                     ||                            |                                               | |
--                     |+----------------------------|-----------------------------------------------+ |
--                     +-----------------------------|-------------------------------------------------+
--                                                   |  +-----+
--                                                   +->|Ready|
--                                                      +-----+
--

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

---------------------------------Divider Top Module--------------------------------------

entity divider is                     
    port ( op_a 	: in std_logic_vector (3 downto 0);  --	A
           op_b 	: in std_logic_vector (3 downto 0);  --	B
           result 	: out std_logic_vector (7 downto 0); --	result
           clk 		: in std_logic;    		     -- clock 
           reset 	: in std_logic;  		     -- reset signal , active low 
           start 	: in std_logic;  		     -- start signal , active high
           ready 	: out std_logic  		     -- ready signal , active high
           );
end divider;

-----------------------------------------------------------------------------------------------------------------

architecture divider_arch of divider is
    signal load_op 	: std_logic;  			
    signal shift_a 	: std_logic;  			
    signal shift_p_poz  : std_logic;  			
    signal shift_p_neg  : std_logic;
    signal sub_p_b 	: std_logic;  			
    signal add_p_b 	: std_logic;  			
    signal add_final    : std_logic;
    signal end_op 	: std_logic;  
    signal neg_p_p 	: std_logic;  
    signal neg_p_r 	: std_logic;  

-----------------------------------Divider Cotrol Module--------------------------------------------------------

component divider_control
    port ( clk 		: in std_logic;
           reset 	: in std_logic;
           start 	: in std_logic;
           neg_p_p 	: in std_logic;
           neg_p_r 	: in std_logic;
           ready 	: out std_logic;  
           end_op 	: out std_logic;
           load_op	: out std_logic;
           shift_a 	: out std_logic;
           shift_p_poz 	: out std_logic;
           shift_p_neg 	: out std_logic;
           sub_p_b	: out std_logic;
           add_p_b 	: out std_logic;
           add_final 	: out std_logic );
end component;

-----------------------------------Divider Data Module--------------------------------------------------------

component divider_data
    port ( op_a 	: in std_logic_vector (3 downto 0); 
           op_b 	: in std_logic_vector (3 downto 0); 
           result 	: out std_logic_vector (7 downto 0);
           clk 		: in std_logic;
           reset 	: in std_logic;
           load_op 	: in std_logic;
           end_op 	: in std_logic;
           shift_a 	: in std_logic;
           shift_p_poz  : in std_logic;
           shift_p_neg  : in std_logic;
           sub_p_b 	: in std_logic;
           add_p_b 	: in std_logic;
           add_final    : in std_logic;
           neg_p_p 	: out std_logic;
           neg_p_r 	: out std_logic );
end component;

begin
-----------------------------------------------------------------------------------------------------------------
    DATA : divider_data port map
    ( op_a => op_a,
      op_b => op_b,
      result => result,
      clk =>  clk,
      reset => reset,
      neg_p_p => neg_p_p,
      neg_p_r => neg_p_r,
      end_op => end_op,
      load_op => load_op,
      shift_a => shift_a,
      shift_p_poz => shift_p_poz,
      shift_p_neg => shift_p_neg,
      sub_p_b => sub_p_b,
      add_p_b => add_p_b,
      add_final => add_final 
      );
-----------------------------------------------------------------------------------------------------------------
    CONTROL : divider_control port map
    ( clk =>  clk,
      reset => reset,
      start => start,
      neg_p_p => neg_p_p,
      neg_p_r => neg_p_r,
      ready => ready,
      end_op => end_op,
      load_op => load_op,
      shift_a => shift_a,
      shift_p_poz => shift_p_poz,
      shift_p_neg => shift_p_neg,
      sub_p_b => sub_p_b,
      add_p_b => add_p_b,
      add_final => add_final );
-----------------------------------------------------------------------------------------------------------------
end divider_arch;
