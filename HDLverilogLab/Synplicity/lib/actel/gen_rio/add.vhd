-- RIO ADDER

library IEEE;
use IEEE.std_logic_1164.all;

entity DWACT_BL_ADSBGRP is

    generic(width, addsub : integer);
    port(
	DATAA,DATAB : in  std_logic_vector(width-1 downto 0);
	CIN,ADD_SUB : in  std_logic;
	SUM         : out std_logic_vector(width-1 downto 0);
	COUT        : out std_logic
	);

end DWACT_BL_ADSBGRP;

library IEEE;
use IEEE.std_logic_1164.all;

architecture impl1 of DWACT_BL_ADSBGRP is
  -- pragma dc_script_begin
  -- set_local_link_library  {dwact.sldb + target_library}
  -- set_map_only find(cell,*ACT_*) > /dev/null
  -- pragma dc_script_end

  -- Component VCC
  component VCC
     port(Y: out STD_LOGIC);
  end component;
 
  -- Component GND
  component GND
     port(Y: out STD_LOGIC);
  end component;
 
  -- Component ADDSUB1
  component ADDSUB1
     port(
	  A  :  in    STD_LOGIC;
	  B  :  in    STD_LOGIC;
	  CI :  in    STD_LOGIC;
	  FCI:  in    STD_LOGIC;
	  AS :  in    STD_LOGIC;
	  S  :  out   STD_LOGIC;
	  CO :  out   STD_LOGIC;
	  FCO:  out   STD_LOGIC);
  end component;

  -- Component ADD1
  component ADD1
   port(
	  A  :  in    STD_LOGIC;
	  B  :  in    STD_LOGIC;
	  CI :  in    STD_LOGIC;
	  FCI:  in    STD_LOGIC;
	  S  :  out   STD_LOGIC;
	  CO :  out   STD_LOGIC;
	  FCO:  out   STD_LOGIC);
  end component;

  -- Component SUB1
  component SUB1
   port(
	  A  :  in    STD_LOGIC;
	  B  :  in    STD_LOGIC;
	  CI :  in    STD_LOGIC;
	  FCI:  in    STD_LOGIC;
	  S  :  out   STD_LOGIC;
	  CO :  out   STD_LOGIC;
	  FCO:  out   STD_LOGIC);
  end component;

  signal CI : std_logic_vector(width downto 0);
  signal FCI : std_logic_vector(width downto 0);
  signal ONE, ZERO : std_logic;

begin

  CI(0) <= CIN;
  FCI(0) <= CIN;

  FOR0: for i in 0 to (width - 1) generate
    IF0: if (addsub = 0) generate
      ACT_ADD1: ADD1 
		port map (A => DATAA( i ), 
			  B => DATAB( i ),
			  CI => CI( i ), 
			  FCI => FCI( i ),
			  S => SUM( i),
			  CO => CI( i + 1 ),
			  FCO => FCI( i + 1 ) ); 
    end generate IF0;

    IF1: if (addsub = 1) generate 
      ACT_SUB1: SUB1 
		port map (A => DATAA( i ), 
			  B => DATAB( i ),
			  CI => CI( i ), 
			  FCI => FCI( i ),
			  S => SUM( i),
			  CO => CI( i + 1 ),
			  FCO => FCI( i + 1 ) ); 
    end generate IF1;

    IF2: if (addsub = 2) generate 
      ACT_ADDSUB1: ADDSUB1 
		port map (A => DATAA( i ), 
			  B => DATAB( i ),
			  CI => CI( i ), 
			  FCI => FCI( i ),
			  AS => ADD_SUB, 
			  S => SUM( i),
			  CO => CI( i + 1 ),
			  FCO => FCI( i + 1 ) ); 
      end generate IF2;

  end generate FOR0;

  COUT <= CI( width );

end impl1;
-- $Header: s:/rcs/mappers/actel/lib/gen_rio/RCS/add.vhd 1.1 1999/01/20 23:52:30 jag Exp $

library IEEE;
use IEEE.std_logic_1164.all;

entity DWACT_BL_ADSB is

    generic(width, fcWidth, addsub: integer);
    port(
	DATAA,DATAB : in  std_logic_vector(width-1 downto 0);
	CIN,ADD_SUB : in  std_logic;
	SUM         : out std_logic_vector(width-1 downto 0);
	COUT        : out std_logic
	);

end DWACT_BL_ADSB;

library IEEE;
use IEEE.std_logic_1164.all;


architecture impl1 of DWACT_BL_ADSB is
  -- pragma dc_script_begin
  -- set_local_link_library  {dwact.sldb + target_library}
  -- set_map_only find(cell,*ACT_*) > /dev/null
  -- pragma dc_script_end

  component DWACT_BL_ADSBGRP is

    generic(width, addsub : integer);
    port(
	DATAA,DATAB : in  std_logic_vector(width-1 downto 0);
	CIN,ADD_SUB : in  std_logic;
	SUM         : out std_logic_vector(width-1 downto 0);
	COUT        : out std_logic
	);

end component;

  signal CI : std_logic_vector( (width + fcWidth - 1) / fcWidth  downto 0 );

begin

  CI(0) <= CIN;

  FOR0: for i in 0 to ( ( (width + fcWidth - 1) / fcWidth ) - 1 ) generate

    IF0: if ( i = ( ( ( width + fcWidth - 1 ) / fcWidth ) - 1 ) ) generate
      DWACT_ADSBGRP: DWACT_BL_ADSBGRP 
		   generic map ( width - ( i * fcWidth ), addsub )
		   port map (
		   DATAA => DATAA( width - 1 downto ( i * fcWidth ) ),
		   DATAB => DATAB( width - 1 downto ( i * fcWidth ) ),
		   CIN => CI(i), 
		   ADD_SUB => ADD_SUB, 
		   SUM => SUM( width - 1 downto ( i * fcWidth ) ),
		   COUT => CI( i + 1 ) ); 
    end generate IF0;

    IF1: if ( i /= ( ( ( width + fcWidth - 1 ) / fcWidth ) - 1 ) ) generate
      DWACT_ADSBGRP: DWACT_BL_ADSBGRP 
		   generic map ( fcWidth , addsub ) 
		   port map (
		   DATAA => DATAA( ( i + 1 ) * fcWidth - 1 downto i * fcWidth ),
		   DATAB => DATAB( ( i + 1 ) * fcWidth - 1 downto i * fcWidth ),
		   CIN => CI(i), 
		   ADD_SUB => ADD_SUB, 
		   SUM => SUM( ( i + 1 ) * fcWidth - 1 downto i *  fcWidth ), 
		   COUT => CI( i + 1 ) ); 
    end generate IF1;

  end generate FOR0;

  COUT <= CI( ( width + fcWidth - 1 ) / fcWidth );

end impl1;
-- $Header: s:/rcs/mappers/actel/lib/gen_rio/RCS/add.vhd 1.1 1999/01/20 23:52:30 jag Exp $

library IEEE;
use IEEE.std_logic_1164.all;

entity DWACT_BL_FADSB is

    generic(width, ripWidth, fcWidth, useGlb, addsub  : integer);
    port(
	DATAA,DATAB : in  std_logic_vector(width-1 downto 0);
	CIN,ADD_SUB : in  std_logic;
        CO	    : out std_logic;
	SUM         : out std_logic_vector(width-1 downto 0)
	);

end DWACT_BL_FADSB;

library IEEE;
use IEEE.std_logic_1164.all;


architecture impl1 of DWACT_BL_FADSB is
  -- pragma dc_script_begin
  -- set_local_link_library  {dwact.sldb + target_library}
  -- set_map_only find(cell,*ACT_*) > /dev/null
  -- pragma dc_script_end

  -- Component GLBLOC
  component GLBLOC
     port(
	  A: in  STD_LOGIC;
	  Y: out STD_LOGIC);
  end component;

  -- Component VCC
  component VCC
     port(Y: out STD_LOGIC);
  end component;

  -- Component GND
  component GND
     port(Y: out STD_LOGIC);
  end component;

  -- Component MX2
  component MX2
     port(
	  A: in  STD_LOGIC;
	  B: in  STD_LOGIC;
	  S: in  STD_LOGIC;
	  Y: out STD_LOGIC);
  end component;

  component DWACT_BL_ADSB is

    generic(width, fcWidth, addsub: integer);
    port(
	DATAA,DATAB : in  std_logic_vector(width-1 downto 0);
	CIN,ADD_SUB : in  std_logic;
	SUM         : out std_logic_vector(width-1 downto 0);
	COUT        : out std_logic
	);

end component;

  signal ZERO : std_logic;
  signal ONE : std_logic;
  signal CI : std_logic_vector( ( width + fcWidth - 1 ) / fcWidth  downto 0 );
  signal SUM_0 : std_logic_vector( width - 1 downto 0);
  signal SUM_1 : std_logic_vector( width - 1 downto 0);
  signal COUT_0 : std_logic_vector( ( (width + ripWidth - 1) / ripWidth ) - 1
				    downto 0 );
  signal COUT_1 : std_logic_vector( ( (width + ripWidth - 1) / ripWidth ) - 1
				    downto 0 );
  signal COUT   : std_logic_vector( ( (width + ripWidth - 1) / ripWidth )
				    downto 0 );
  signal COUTGLB : std_logic_vector( ( (width + ripWidth - 1) / ripWidth ) - 1
				     downto 0 );
begin

  CI(0) <= CIN;

  DWACT_ADSBGRP_L0 : DWACT_BL_ADSB
	       generic map (
	       ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
	       ( ( width + ripWidth - 1 ) / ripWidth ),
	       fcWidth, addsub )

	       port map (
	       DATAA => 
	       DATAA( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		      ( ( width + ripWidth - 1 ) / ripWidth ) - 1 downto 0 ),
	       DATAB => 
	       DATAB( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		      ( ( width + ripWidth - 1 ) / ripWidth ) - 1 downto 0 ),
	       CIN => CI(0), 
	       ADD_SUB => ADD_SUB, 
	       SUM => 
	       SUM( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		    ( ( width + ripWidth - 1 ) / ripWidth ) - 1 downto 0 ),
	       COUT => COUT( 0 ) ); 

  IF0: if ( ( ( width + ripWidth - 1 ) / ripWidth ) > 1 ) generate

    IF0_0: if ( useGlb = 1) generate
      ACT_GLBLOC_COUT: GLBLOC port map ( A => COUT(0), Y => COUTGLB(0) );
    end generate IF0_0;

    IF0_1: if ( useGlb /= 1) generate
      COUTGLB(0) <= COUT(0);
    end generate IF0_1;

  end generate IF0;
 
  IF10: if ( width <= ripWidth ) generate
      CO <= COUT(0) ;
  end generate IF10;

  FOR0: for i in 1 to ( ( (width + ripWidth - 1) / ripWidth ) - 1 ) generate

    ACT_VCC: VCC port map (ONE);
    ACT_GND: GND port map (ZERO);

    IF1: if ( i = ( ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) ) generate

      -- Adder assuming carry-in = 0

      DWACT_BL_ADSB_0: DWACT_BL_ADSB
		   generic map (
		   width - i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ),
		   fcWidth, addsub )

		   port map (
		   DATAA => DATAA( width - 1 downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   DATAB => DATAB( width - 1 downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   CIN => ZERO, 
		   ADD_SUB => ADD_SUB, 
		   SUM => SUM_0( width - 1 downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   COUT => COUT_0(i) ); 

      -- Adder assuming carry-in = 1

      DWACT_BL_ADSB_1: DWACT_BL_ADSB
		   generic map (
		   width - i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ),
		   fcWidth, addsub )

		   port map (
		   DATAA => DATAA( width - 1 downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   DATAB => DATAB( width - 1 downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   CIN => ONE, 
		   ADD_SUB => ADD_SUB, 
		   SUM => SUM_1( width - 1 downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   COUT => COUT_1(i) ); 

      -- Multiplexing the sums

      FOR0_0: for j in 0 to ( ( width - i * 
	      ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
	        ( ( width + ripWidth - 1 ) / ripWidth ) ) ) - 1 ) generate

	ACT_MUX_SUM: MX2 
		   port map (
		   A => SUM_0( i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) )  + j ),
		   B => SUM_1( i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) )  + j ),
		   S => COUTGLB( i - 1 ),
		   Y => SUM( i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) )  + j ) );

      end generate FOR0_0;

      ACT_MUX_COUT: MX2
                     port map (
                     A => COUT_0( i ),
                     B => COUT_1( i ),
                     S => COUTGLB( i - 1 ),
                     Y => CO );
    end generate IF1;


    IF2: if ( i /= ( ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) ) generate

      -- Adder assuming carry-in = 0

      DWACT_BL_ADSB_0: DWACT_BL_ADSB
		   generic map (
		   ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) /
		   ( ( width + ripWidth - 1 ) / ripWidth ),
		   fcWidth, addsub)

		   port map (
		   DATAA => 
		   DATAA( ( i + 1 ) * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) - 1
		   downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   DATAB => 
		   DATAB( ( i + 1 ) * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) - 1
		   downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   CIN => ZERO, 
		   ADD_SUB => ADD_SUB, 
		   SUM => 
		   SUM_0( ( i + 1 ) * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) - 1
		   downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   COUT => COUT_0(i) ); 

      -- Adder assuming carry-in = 1

      DWACT_BL_ADSB_1: DWACT_BL_ADSB
		   generic map (
		   ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) /
		   ( ( width + ripWidth - 1 ) / ripWidth ),
		   fcWidth, addsub)

		   port map (
		   DATAA => 
		   DATAA( ( i + 1 ) * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) - 1
		   downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   DATAB => 
		   DATAB( ( i + 1 ) * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) - 1
		   downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   CIN => ONE, 
		   ADD_SUB => ADD_SUB, 
		   SUM => 
		   SUM_1( ( i + 1 ) * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) - 1
		   downto i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) ) ),
		   COUT => COUT_1(i) ); 

      -- Multiplexing the sums

      FOR0_1: for j in 0 to ( 
	      ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
	        ( ( width + ripWidth - 1 ) / ripWidth ) ) - 1 ) generate

	ACT_MUX_SUM: MX2 
		   port map (
		   A => SUM_0( i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) )  + j ),
		   B => SUM_1( i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) )  + j ),
		   S => COUTGLB( i - 1 ),
		   Y => SUM( i * 
		   ( ( width + ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) / 
		     ( ( width + ripWidth - 1 ) / ripWidth ) )  + j ) );

      end generate FOR0_1;

    end generate IF2;

    -- Compute the carry-out for the next stage of carry selection

    IF3: if ( 1 < ( ( width + ripWidth - 1 ) / ripWidth ) - 1 ) generate 

      ACT_MUX_COUT: MX2 
		   port map (
		   A => COUT_0( i ),
		   B => COUT_1( i ),
		   S => COUT( i - 1 ),
		   Y => COUT( i ) );

      IF3_0: if ( useGlb = 1 ) generate
	ACT_GLBLOC_COUT: GLBLOC port map ( A => COUT(i), Y => COUTGLB(i) );
      end generate IF3_0;

      IF3_1: if ( useGlb /= 1 ) generate
	COUTGLB(i) <= COUT(i);
      end generate IF3_1;

    end generate IF3;

  end generate FOR0;

end impl1;
library IEEE;
use IEEE.std_logic_1164.all;

entity DWACT_ADD is

  generic(width : integer);
  port(
      A,B : in std_logic_vector( width - 1 downto 0 );
      CI  : in std_logic;
      CO  : out std_logic;
      S   : out std_logic_vector( width - 1 downto 0 )
      );

end DWACT_ADD;

library IEEE;
use IEEE.std_logic_1164.all;


architecture ARCH1 of DWACT_ADD is
   component ADD1
   port(
	  A  :  in    STD_LOGIC;
	  B  :  in    STD_LOGIC;
	  CI :  in    STD_LOGIC;
	  FCI:  in    STD_LOGIC;
	  S  :  out   STD_LOGIC;
	  CO :  out   STD_LOGIC;
	  FCO:  out   STD_LOGIC);
  end component;
  
  component DWACT_BL_FADSB
     generic(width, ripWidth, fcWidth, useGlb, addsub: integer);
     port(
         DATAA,DATAB : in  std_logic_vector(width-1 downto 0);
         CIN,ADD_SUB : in  std_logic;
         CO : out  std_logic;
         SUM         : out std_logic_vector(width-1 downto 0)
         );
 end component;

  component VCC
     port(Y: out STD_LOGIC);
  end component;

  signal ONE : std_logic;

begin
  
  IF_0: if (width = 1) generate
  DW01_add0: ADD1         
             port map    (   A    => A(0),
                             B    => B(0),
                             CI   => CI,
                             S  => S(0),
                             CO   => CO,
							 FCI => CI
             );
  end generate IF_0;
 
  IF_1: if (width > 1) generate 

  ACT_VCC : VCC port map (ONE);

  DWACT_BL_FADSB0 : DWACT_BL_FADSB 
			       generic map (width, 64, 8, 0, 0) 
			       port map (
					 DATAA => A( width - 1 downto 0 ),
					 DATAB => B( width - 1 downto 0 ),
					 CIN => CI,
					 CO  => CO,
					 ADD_SUB => ONE,
					 SUM => S( width - 1 downto 0 ) );
  end generate IF_1;

end ARCH1;





library ieee; 
use ieee.std_logic_1164.all;

entity ADD is
	generic(width : integer := 2);
	port(A: in std_logic_vector(width -1 downto 0);
	     B: in std_logic_vector(width -1 downto 0);
	     CIN : in std_logic;
	     O : out std_logic_vector(width -1 downto 0);
	     COUT: out std_logic);
end ADD;


architecture cell_level of ADD is

 component DWACT_ADD is

  generic(width : integer);
  port(
      A,B : in std_logic_vector( width - 1 downto 0 );
      CI  : in std_logic;
      CO  : out std_logic;
      S   : out std_logic_vector( width - 1 downto 0 )
      );

end component;
	

begin
	I0 : DWACT_ADD generic map (width => width)
	     port map ( A => A,
		            B => B,
					CI => CIN,
					S => O,
					CO => COUT
				   );


end  cell_level;

