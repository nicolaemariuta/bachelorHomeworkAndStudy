-- $Header: s:/rcs/mappers/dyna/lib/gen_dl6000/RCS/lshift.vhd 1.3 1998/11/13 22:14:53 ken Exp $
library IEEE; 
use IEEE.Std_Logic_1164.all; 
use IEEE.Std_Logic_arith.all; 
use IEEE.Std_Logic_unsigned.all;

entity LSHIFT is 
generic(width : Integer := 4; 
        dwidth: integer := 4);
port(O : out  std_logic_vector(Width - 1 downto 0);
      A : in std_logic_vector(Width - 1 downto 0); 
      D : in Std_Logic_Vector(DWidth - 1 downto 0)); 
end LSHIFT; 

architecture ALSHIFT of LSHIFT is 
begin
process(a,d)
variable i : integer;
variable zero : std_logic_vector(width-1 downto 0) := (others => '0');
begin
    o <= zero;
    if (d <= conv_std_logic_vector(width,dwidth)) then
        for i in 0 to width-1 loop
            if (conv_std_logic_vector(i,dwidth)=d) then
                o <= shr(a,conv_std_logic_vector(i,dwidth));
            end if;
        end loop;
    end if;
end process;

end ALSHIFT; 

architecture ARCH1 of LSHIFT is 
begin
process(a,d)
variable i, pow, pow1: integer;
variable r : std_logic_vector(width-1 downto 0);
variable zero : std_logic_vector(width-1 downto 0);
begin
    zero := (others => '0');
    r := A;
    pow := 1;
    for i in 0 to dwidth-1 loop
        if(d(i) = '1') then
            pow1 := pow - 1;
            if pow >= width then
                r := zero;
            else
                r := r((width - 1 -  pow)  downto 0) & zero(pow1  downto 0);
            end if;
        end if;
        if(pow <= width) then
            pow := pow + pow;
        end if;
    end loop;

    o <= r;
end process;

end ARCH1; 



