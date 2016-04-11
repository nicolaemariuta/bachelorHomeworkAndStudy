-- Entitatea de test
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Test IS
END Test;

-- Arhitectura asociat'a entit'a'tii de test
ARCHITECTURE Test OF Test IS
  SIGNAL D, Q, Qn: std_logic;
  SIGNAL Ck: std_logic := '0';

  COMPONENT Dcomp
    PORT(Ck, D: IN std_logic;
         Q, QN: OUT std_logic);
  END COMPONENT;

  FOR ALL: Dcomp USE ENTITY WORK.D_latch(Comportament);

BEGIN

DUT: Dcomp PORT MAP(Ck, D, Q, QN);

Ck <= Not Ck AFTER 10 ns;
D <= '0', '1' AFTER 5 ns, '0' AFTER 35 ns, '1' AFTER 37 ns, '0' AFTER 45 ns;
 
END Test;