-- Entitatea
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY D_latch IS
  PORT(Ck, D: IN std_logic;
       Q, QN: OUT std_logic);
END D_latch;

-- Arhitectura
ARCHITECTURE Comportament OF D_latch IS
BEGIN
Latch: PROCESS(Ck, D)
  BEGIN
    IF (Ck='1') THEN
      Q  <= D;
      QN <= Not D;
    END IF;
  END PROCESS;
END Comportament;