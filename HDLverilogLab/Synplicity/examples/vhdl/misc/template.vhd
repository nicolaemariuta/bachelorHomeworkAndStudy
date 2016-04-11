-- List libraries/packages that contain definitions you use
library ieee; 
use ieee.std_logic_1164.all ;

-- The entity describes the interface for your design
entity entity_name is
--   generic  ( <define_interface_constants_here> ) ;
--    port ( <port_list_information_goes_here> ) ;  
end ;

-- The architecture describes the functionality (implementation) of your design
architecture architecture_name of entity_name 
is -- architecture declaration region
-- declare internal signals, data types, and subprograms
-- here

-- if you will create hierarchy by instantiating a
-- component (which is just another architecture),
-- declare
-- its interface here with a component declaration;
-- component  entity_name_instantiated_below
--    port (<port_list_information_as_defined_in_the_entity>) ;
-- end component ;
signal my_sig1 : std_logic ; -- holds a single std_logic bit
type my_type is (a1, a2, a3);
type states is ( state0, state1, state2, state3 );
signal result_signal_name: std_logic ;
begin -- architecture body, describes functionality
-- Use concurrent statements<+> here to describe the 
-- functionality of your design.  The most common
-- concurrent statements are the concurrent signal
-- assignment, process, and component instantiation

-- concurrent signal assignment (simple form):
result_signal_name <= '1' ;
my_sig1 <= '1';  -- assign a constant value '1'
-- process:
process (result_signal_name)
-- declare local variables, data types,
-- and other local declarations here
begin	
--  sequential statements go here, including:
--  signal and variable assignments  
--  if  and case statements  
--  while and for loops  
--  function and procedure calls
end process;


 
end architecture_name ;








