-- $Header: s:/rcs/mappers/dyna/lib/gen_dl6000/RCS/add.vhd 1.2 1998/11/13 22:14:53 ken Exp $
library ieee; 
use ieee.std_logic_1164.all;

entity add_element is
    port(ai, bi, c_in : in std_logic;
             o, c_out : out std_logic);
end add_element;


architecture eqn of add_element is
  signal t1 : std_logic;
begin
    o <= ai xor bi xor c_in;
    c_out <= (ai and ( bi or c_in)) or (c_in and bi) ;
    
end eqn;



library ieee; 
use ieee.std_logic_1164.all;

entity ADD is
    generic(width : integer := 4);
    port(A: in std_logic_vector(width -1 downto 0);
         B: in std_logic_vector(width -1 downto 0);
         CIN : in std_logic;
         O : out std_logic_vector(width -1 downto 0);
         COUT: out std_logic);
end ADD;


architecture cell_level of ADD is

    signal data_tmp : std_logic_vector (width - 1 downto 0);

    component add_element is
        port(ai, bi, c_in : in std_logic;
                 o, c_out : out std_logic);
    end component;

begin
    first_inst : add_element
        port map(ai => A(0), 
        bi => B(0),
        c_in => CIN,
        c_out => data_tmp(0),
        o => O(0));
        
    le : for bit_index in 1 to width - 1 generate
        begin
            inst_le : add_element
                port map(ai => A(bit_index), 
                bi => B(bit_index),
                c_in => data_tmp(bit_index - 1),
                c_out => data_tmp(bit_index),
                o => O(bit_index));
        end generate;

        
    COUT <= data_tmp(width-1); 
    

end  cell_level;

