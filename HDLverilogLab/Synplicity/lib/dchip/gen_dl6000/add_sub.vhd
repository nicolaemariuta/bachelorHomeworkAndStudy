-- $Header: s:/rcs/mappers/dyna/lib/gen_dl6000/RCS/add_sub.vhd 1.2 1998/11/13 22:14:53 ken Exp $
library ieee; 
use ieee.std_logic_1164.all;

-- if c_in is not connected supply 1 for subtraction
entity add_sub_element is
        port(ai, bi, c_in, add_sub : in std_logic;
             o, c_out : out std_logic);
end add_sub_element;


architecture eqn of add_sub_element is
  signal t1 : std_logic;
begin
        t1 <= bi when add_sub = '1' else
              not(bi);
    o <= ai xor t1 xor c_in;
    c_out <= (ai and ( t1 or c_in)) or (c_in and t1) ;
    
end eqn;



library ieee; 
use ieee.std_logic_1164.all;

entity ADD_SUB is
    generic(width : integer := 4);
    port(A: in std_logic_vector((width -1) downto 0);
         B: in std_logic_vector((width -1)downto 0);
         CIN : in std_logic;
         AS : in std_logic;
         O : out std_logic_vector((width -1) downto 0);
         COUT: out std_logic);
end ADD_SUB;


architecture cell_level of ADD_SUB is

    signal data_tmp : std_logic_vector ((width -1) downto 0);

    component add_sub_element is
        port(ai, bi, c_in, add_sub : in std_logic;
                 o, c_out : out std_logic);
    end component;

begin
    first_inst : add_sub_element
        port map(ai => A(0), 
        bi => B(0),
        c_in => CIN,
        add_sub => AS,
        c_out => data_tmp(0),
        o => O(0));
        
    le : for bit_index in 1 to width - 1 generate
        begin
            inst_le : add_sub_element
                port map(ai => A(bit_index), 
                bi => B(bit_index),
                c_in => data_tmp(bit_index - 1),
                add_sub => AS,
                c_out => data_tmp(bit_index),
                o => O(bit_index));
        end generate;

        
        COUT <= data_tmp(width-1);

end  cell_level;

