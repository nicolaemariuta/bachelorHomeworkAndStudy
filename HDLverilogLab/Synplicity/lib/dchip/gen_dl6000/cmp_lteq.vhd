-- $Header: s:/rcs/mappers/dyna/lib/gen_dl6000/RCS/cmp_lteq.vhd 1.3 1998/11/13 22:14:53 ken Exp $
library ieee; 
use ieee.std_logic_1164.all;

entity lte_element is
        port(ai, bi, oi_1_lt, oi_1_eq : in std_logic;
             oi_lt, oi_eq : out std_logic);
end lte_element;


architecture eqn of lte_element is
  signal t1 : std_logic;
begin
    t1 <= ai xor bi;
    oi_lt <= bi when t1 = '1' else
          oi_1_lt when t1 = '0';
    oi_eq <= not(t1) and oi_1_eq;
    
end eqn;



library ieee; 
use ieee.std_logic_1164.all;

entity lte_operator is
    generic(width : integer := 4);
    port(A: in std_logic_vector(width -1 downto 0);
         B: in std_logic_vector(width -1 downto 0);
         LT, EQ : out std_logic);
end lte_operator;


architecture cell_level of lte_operator is

    signal data_tmp_lt : std_logic_vector (width -1 downto 0);
    signal data_tmp_eq : std_logic_vector (width -1 downto 0);

    component lte_element is
        port(ai, bi, oi_1_lt, oi_1_eq : in std_logic;
            oi_lt, oi_eq : out std_logic);
    end component;

begin
    first_inst : lte_element
        port map(ai => A(0), 
        bi => B(0),
        oi_1_lt => '0',
        oi_1_eq => '1',
        oi_lt => data_tmp_lt(0),
        oi_eq => data_tmp_eq(0));
        
    le : for bit_index in 1 to width - 2 generate
        begin
            inst_le : lte_element
                port map(ai => A(bit_index), 
                bi => B(bit_index),
                oi_1_lt => data_tmp_lt(bit_index - 1),
                oi_1_eq => data_tmp_eq(bit_index - 1),
                oi_lt => data_tmp_lt (bit_index),
                oi_eq => data_tmp_eq (bit_index));
        end generate;

        

    le1 : if(width > 1) generate
    begin
        last_inst :lte_element
            port map(ai => A(width - 1), 
            bi => B(width - 1),
            oi_1_lt => data_tmp_lt(width - 2),
            oi_1_eq => data_tmp_eq(width - 2),
            oi_lt => LT,
            oi_eq => EQ);
    end generate;

    le2 : if(width = 1) generate
    begin
        LT <= data_tmp_lt(0);
        EQ <= data_tmp_eq(0);
    end generate;

end  cell_level;

