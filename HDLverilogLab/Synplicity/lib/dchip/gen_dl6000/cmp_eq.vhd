-- $Header: s:/rcs/mappers/dyna/lib/gen_dl6000/RCS/cmp_eq.vhd 1.3 1998/11/13 22:14:53 ken Exp $
library ieee; 
use ieee.std_logic_1164.all;

entity eq_element is
        port(ai, bi, oi_1 : in std_logic;
             oi : out std_logic);
end eq_element;


architecture eqn of eq_element is
  signal t1 : std_logic;
begin
    t1 <= ai xnor bi;
    oi <= t1 and oi_1;
    
end eqn;



library ieee; 
use ieee.std_logic_1164.all;

entity CMP_EQ is
    generic(width : integer := 2);
    port(A: in std_logic_vector(width -1 downto 0);
         B: in std_logic_vector(width -1 downto 0);
         EQ : out std_logic);
end CMP_EQ;


architecture cell_level of CMP_EQ is

    signal data_tmp : std_logic_vector (width -1 downto 0);

    component eq_element is
        port(ai : in std_logic;
             bi : in std_logic;
             oi_1 : in std_logic;
             oi : out std_logic);
    end component;

begin
    first_inst : eq_element
        port map(ai => A(0), 
        bi => B(0),
        oi_1 => '1',
        oi => data_tmp(0));
        
    le : for bit_index in 1 to width - 2 generate
        begin
            inst_le : eq_element
                port map(ai => A(bit_index), 
                bi => B(bit_index),
                oi_1 => data_tmp(bit_index - 1),
                oi => data_tmp (bit_index));
        end generate;

        

    le1: if(width > 2) generate
    begin
        last_inst :eq_element
            port map(ai => A(width - 1), 
            bi => B(width - 1),
            oi_1 => data_tmp(width - 2),
            oi => EQ);
    end generate;

    le2: if( width = 1) generate
    begin
       EQ <= data_tmp(0);
    end generate;

end  cell_level;

