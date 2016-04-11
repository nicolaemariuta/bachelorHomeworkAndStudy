-- $Header: s:/rcs/mappers/dyna/lib/gen_dl6000/RCS/srshift.vhd 1.3 1998/11/13 23:41:13 ashish Exp $
library IEEE; 
use IEEE.Std_Logic_1164.all; 
use IEEE.Std_Logic_arith.all; 
use IEEE.Std_Logic_unsigned.all;

entity SRSHIFT is 
generic(width : Integer := 15; 
        dwidth: integer := 10);
port(O : out  std_logic_vector(Width - 1 downto 0);
      A : in std_logic_vector(Width - 1 downto 0); 
      D : in Std_Logic_Vector(DWidth - 1 downto 0)); 
end SRSHIFT; 

architecture ARCH1 of SRSHIFT is 
begin
process(a,d)
variable i, pow, pow1: integer;
variable r : std_logic_vector(width-1 downto 0);
variable msb_array: std_logic_vector(width-1 downto 0);
begin
    for i in 0 to width-1 loop
        msb_array(i) := A(width -1);
    end loop;

    r := A;
    pow := 1;
    for i in 0 to dwidth-1 loop
        if(d(i) = '1') then
            pow1 := pow - 1;
            if pow >= width then
                r := msb_array;
            else
                r := msb_array(pow1 downto 0) & r(width-1 downto pow);
            end if;
        end if;
        if(pow <= width) then
            pow := pow + pow;
        end if;
    end loop;

    o <= r;
end process;

end ARCH1; 

architecture ASRSHIFT of SRSHIFT is 
begin
process(a,d)
variable i : integer;
variable o_s : SIGNED (width -1 downto 0);
variable a_s : SIGNED (width -1 downto 0);
variable d_s : UNSIGNED(dwidth -1 downto 0);

variable zero : std_logic_vector(width-1 downto 0) := (others => '0');
begin
    o <= zero;
    if (d <= conv_std_logic_vector(width,dwidth)) then
        for i in 0 to width-1 loop
            if (conv_std_logic_vector(i,dwidth)=d) then
                d_s := conv_unsigned(i, dwidth);
                a_s := conv_signed(conv_integer(a), width);
                o_s := shr(a_s, d_s);
                o<= conv_std_logic_vector(o_s, width);
            end if;
        end loop;
    end if;
end process;

end ASRSHIFT; 


