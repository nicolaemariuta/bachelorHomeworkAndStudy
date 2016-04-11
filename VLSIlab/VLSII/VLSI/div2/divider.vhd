--5. Algoritm de impartire fara restaurare (pozitiv/negativ)
--library IEEE;
--use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
--use IEEE.std_logic_unsigned.all;

entity divider is
	port (
	clk   : in  bit ;
	start : in  bit ;
	reset : in  bit ;
	op1 : in bit_vector (3 downto 0);
	op2 : in bit_vector (3 downto 0);
	cat   : out bit_vector (3 downto 0);
	rest  : out bit_vector (4 downto 0);
	valid : out bit 
	);
end divider;


architecture dut_beh of divider is


component cale_control
	port (
	clk    : in bit;
    reset  : in bit;
    doiter : out bit;
    load   : out bit;
    start  : in bit;
    valid  : out bit
	) ;
end component;

component cale_date
	port ( 
	clk     : in bit;
      reset   : in bit;
      op1     : in bit_vector(3 downto 0);
      op2     : in bit_vector(3 downto 0);
      cat     : out bit_vector(3 downto 0);
      rest    : out bit_vector(4 downto 0);
      doiter  : in bit;
      load    : in bit
	) ;
end component;

   signal doiter      : bit;
   signal load        : bit;
   signal cat_init   : bit_vector(3 downto 0);
   signal rest_init  : bit_vector(4 downto 0);
   signal valid_init : bit;
begin


control : cale_control port map (
	clk     => clk,
         reset   => reset,
         doiter  => doiter,
         load    => load,
         start   => start,
         valid   => valid_init
);



date :	cale_date 
	port map (
	clk=> clk,
           reset=> reset,
           op1=> op1,
           op2=> op2,
           cat=> cat_init,
           rest=> rest_init,
           doiter=> doiter,
           load=> load
);

   cat <= cat_init;
   rest <= rest_init;
   valid <= valid_init;
end dut_beh;
	
