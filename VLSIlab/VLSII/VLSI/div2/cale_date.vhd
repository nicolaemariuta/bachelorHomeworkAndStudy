--5. Algoritm de impartire fara restaurare (pozitiv/negativ)
-- Calea de date

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity cale_date is
  port (
    clk     : in bit;
    reset   : in bit;
    op1     : in bit_vector(3 downto 0);
    op2     : in bit_vector(3 downto 0);
    cat     : out bit_vector(3 downto 0);
    rest    : out bit_vector(4 downto 0);
    doiter  : in bit;
    load    : in bit
  );
end cale_date;

architecture cd_beh of cale_date is
   signal amux    : bit_vector(3 downto 0);
   signal padd    : bit_vector(4 downto 0);
   signal b_neg   : bit_vector(4 downto 0);
   signal p_shift : bit_vector(4 downto 0);
   signal b_mux   : bit_vector(4 downto 0);
   signal bneg    : bit_vector(4 downto 0);
   signal A       : bit_vector(3 downto 0);
   signal B       : bit_vector(4 downto 0);
   signal P       : bit_vector(4 downto 0);

begin

  process (clk)
   begin
		if (clk'event AND clk = '1') then
			if ((NOT(reset)) = '1') then
         			A <= "0000";
      	elsif (doiter = '1') then
            A <= amux;
       end if;
     end if;
   end process;
   
   process (clk)
   begin
		if(clk'event AND clk = '1') then
			if ((NOT(reset)) = '1') then
         				B <= "00000";
      	elsif(load = '1') then
             B <= ('1' & op2);
       end if;
     end if;
   end process;
   
   process (clk)
   begin
		if (clk'event AND clk = '1') then
	      if ((NOT(reset)) = '1') then
         			P <= "00000";
      			elsif (load = '1') then
            P <= (op2(3) & op2);
         elsif (doiter = '1') then
            P <= padd;
         end if;
     end if;
   end process;
   
   process (clk)
   begin
		if (clk'event AND clk = '1') then
      			if ((NOT(reset)) = '1') then
         				cat <= "0000";
      			elsif (doiter = '1') then
             cat <=( A(2 downto 0) & P(4)) + "0001";
         end if;
     end if;
   end process;
   
   process (clk)
   begin
		 if (clk'event AND clk = '1') then
	      if ((NOT(reset)) = '1') then
         			rest <= "00000";
      		 elsif((P(4)) = '1') then
            rest <= padd;
         			ELSE
            rest <= P;
         end if;
      end if;
   end process;
   
   bneg <= NOT(B) + "00001";
   p_shift <= (P(3 downto 0) & A(3));
   b_neg <= (NOT(B) + "00001") WHEN ((P(3)) = '1') ELSE
            B;
   b_mux <= ("00000"+op2) WHEN (load = '1') ELSE
            b_neg;
   amux <= op1 WHEN (load = '1') ELSE
           (A(2 downto 0) & P(4));
   padd <= p_shift + b_mux;

end cd_beh;