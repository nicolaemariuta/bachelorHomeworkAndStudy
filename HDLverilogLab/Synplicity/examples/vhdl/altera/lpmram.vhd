-- Example showing use of the LPM RAM component
entity myram is 
port (clock, we: in bit;
      data : in bit_vector(3 downto 0);
      address: in bit_vector(1 downto 0);
      q: out bit_vector(3 downto 0));
end myram;

architecture arch1 of myram is

-- Declare the component here

component myram_4x4
    port (data: in bit_vector(3 downto 0);
        address : in bit_vector(1 downto 0);
        inclock, outclock, we: in bit;
        q: out bit_vector(3 downto 0));
end component;

-- Declare the black_box and the Altera LPM attributes
--    to be of the appropriate types:  boolean, integer, and string

attribute black_box: boolean;
attribute LPM_WIDTH: integer;
attribute LPM_WIDTHAD: integer;
attribute LPM_TYPE: string;

-- Assign the appropriate attribute values here

attribute black_box of myram_4x4: component is true;
attribute LPM_WIDTH of myram_4x4: component is 4;
attribute LPM_WIDTHAD of myram_4x4: component is 2; 
-- Here is where we specify that the LPM parameterized module we
--    want to use is:  "LPM_RAM_DQ"
attribute LPM_TYPE of myram_4x4: component is "LPM_RAM_DQ";

begin
-- Instantiate the LPM component here
u1:    myram_4x4  port map(data,
                           address, 
				clock, clock, we, 
				q);
end arch1;


