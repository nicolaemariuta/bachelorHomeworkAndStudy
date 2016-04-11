LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE bit_arith IS

    FUNCTION "+"(op1, op2: BIT_VECTOR) RETURN BIT_VECTOR;

    FUNCTION "-"(op1, op2: BIT_VECTOR) RETURN BIT_VECTOR;

    FUNCTION sh_left(op1: BIT_VECTOR; op2: NATURAL) RETURN BIT_VECTOR;

    FUNCTION sh_right(op1: BIT_VECTOR; op2: NATURAL) RETURN BIT_VECTOR;

    FUNCTION align_size (oper : BIT_VECTOR; size : NATURAL) RETURN BIT_VECTOR;

    FUNCTION align_size (oper : BIT;        size : NATURAL) RETURN BIT_VECTOR;

    FUNCTION To_BitVector (oper: INTEGER; length: NATURAL) RETURN BIT_VECTOR;

    FUNCTION  max (op1, op2 : INTEGER) RETURN INTEGER;

END bit_arith;


PACKAGE BODY bit_arith IS
   
--------------------------------------------------------------------------------
   FUNCTION align_size (oper : BIT_VECTOR; size : NATURAL) RETURN BIT_VECTOR IS
     VARIABLE out_mvlv  : BIT_VECTOR(size-1 DOWNTO 0);
     VARIABLE temp_oper : BIT_VECTOR(oper'LENGTH-1 DOWNTO 0) := oper;
   BEGIN
     IF oper'LENGTH > size THEN
       out_mvlv := temp_oper(size-1 DOWNTO 0);
     ELSE
       out_mvlv := (OTHERS => '0');
       out_mvlv(oper'LENGTH-1 DOWNTO 0) := oper ;
     END IF;
     RETURN (out_mvlv);
   END align_size;

--------------------------------------------------------------------------------
   FUNCTION align_size (oper : BIT; size : NATURAL) RETURN BIT_VECTOR IS
     VARIABLE outv  : BIT_VECTOR(size-1 DOWNTO 0) := (OTHERS => '0');
   BEGIN
     outv(outv'RIGHT) := oper;
     RETURN (outv);
   END align_size;
 

--------------------------------------------------------------------------------
    FUNCTION max (op1, op2 : INTEGER) RETURN INTEGER IS
    BEGIN
      IF op1 > op2 THEN
        RETURN op1;
      ELSE
        RETURN op2;
      END IF;
    END max;

-------------------------------------------------------------------------------- 
    FUNCTION To_BitVector (oper: INTEGER; length: NATURAL) RETURN BIT_VECTOR IS
      VARIABLE temp : INTEGER := oper;
      VARIABLE temp_result : BIT_VECTOR (LENGTH-1 DOWNTO 0) := (OTHERS => '0');
    BEGIN
      IF (oper = INTEGER'LEFT) THEN
        temp_result(0) := '1';
        IF (length > 31) THEN
          temp_result(LENGTH -1 downto 31) := (others => '1');
        END IF;
          RETURN temp_result;
        END IF;

        FOR i IN 0 TO LENGTH - 1 LOOP
          IF (temp MOD 2) = 1 THEN
            temp_result(i) := '1';
          ELSE
            temp_result(i) := '0';
          END IF;
          EXIT WHEN temp = 0;
          IF temp < 0 THEN
            temp := (temp - 1) / 2;
          ELSE
            temp := temp / 2;
          END IF;
        END LOOP;
        RETURN temp_result;
    END To_BitVector;
 
--------------------------------------------------------------------------------
    FUNCTION "+" (op1, op2 : BIT_VECTOR) RETURN BIT_VECTOR IS
      CONSTANT size1: INTEGER := op1'LENGTH;
      CONSTANT size2: INTEGER := op2'LENGTH;
      CONSTANT size_op: INTEGER := max(size1, size2);

      VARIABLE loop_cnt : INTEGER := size_op - 1;
      VARIABLE oper1, oper2 : BIT_VECTOR(loop_cnt DOWNTO 0);
      VARIABLE result : BIT_VECTOR (loop_cnt DOWNTO 0) := (others => '0');
      VARIABLE lt, rt : BIT;
      VARIABLE carry : BIT := '0';
    BEGIN
      IF (size1 < size_op) THEN
         oper1 := align_size(op1, size_op);
      ELSE 
         oper1 := op1;
      END IF;

      IF (size2 < size_op) THEN
         oper2 := align_size(op2, size_op);
      ELSE 
         oper2 := op2;
      END IF;

      FOR i IN 0 TO loop_cnt LOOP 
        lt := oper1(i);
        rt := oper2(i);
        result(i) := lt XOR rt XOR carry; 
        carry := (lt AND rt) OR (lt AND carry) OR (rt AND carry); 
      END LOOP;
      RETURN (result);
    END "+";

--------------------------------------------------------------------------------
    FUNCTION "-"(op1, op2: BIT_VECTOR) RETURN BIT_VECTOR IS
      CONSTANT size1: NATURAL := op1'LENGTH;
      CONSTANT size2: NATURAL := op2'LENGTH;
      CONSTANT size_op: NATURAL := max(size1, size2);

      VARIABLE loop_cnt : NATURAL := size_op - 1;
      VARIABLE oper1, oper2 : BIT_VECTOR(loop_cnt DOWNTO 0);
      VARIABLE result : BIT_VECTOR (loop_cnt DOWNTO 0) := (others => '0');
      VARIABLE lt, rt: BIT;
      VARIABLE carry: BIT := '1'; -- init '1' for 2's complement
    BEGIN
      IF (size1 < size_op) THEN
         oper1 := align_size(op1, size_op); 
      ELSE
         oper1 := op1;
      END IF;

      IF (size2 < size_op) THEN
         oper2 := align_size(op2, size_op); 
      ELSE
         oper2 := op2;
      END IF;
      oper2 := NOT oper2;    -- 1's complement of op2, extra variable 

      FOR i IN 0 TO loop_cnt LOOP  
        lt := oper1(i);
        rt := oper2(i);
        result(i) := lt XOR rt XOR carry;
        carry := (lt AND rt) OR (lt AND carry) OR (rt AND carry);
      END LOOP;
      RETURN (result);
    END "-";

--------------------------------------------------------------------------------
    FUNCTION sh_left (op1 : BIT_VECTOR; op2 : NATURAL) RETURN BIT_VECTOR IS
      CONSTANT size_op: INTEGER := op1'LENGTH;
      CONSTANT left : INTEGER := op1'LEFT;
      CONSTANT right : INTEGER := op1'RIGHT;
      VARIABLE result: BIT_VECTOR (size_op-1 DOWNTO 0) := (OTHERS => '0');
    BEGIN
      IF (op2 = 0) THEN
        RETURN (op1);
      END IF;
      IF (op2 >= size_op) THEN
         return (result);  
      END IF;

      IF (left >= right) THEN
        result(size_op-1 DOWNTO op2) := op1((left - op2) DOWNTO right);
      ELSE
        result(size_op-1 DOWNTO op2) := op1((left + op2) TO right);
      END IF;

      RETURN result;
    END sh_left;

--------------------------------------------------------------------------------
    FUNCTION sh_right (op1 : BIT_VECTOR; op2 : NATURAL) RETURN BIT_VECTOR IS
      CONSTANT size_op: INTEGER := op1'LENGTH;
      CONSTANT left : INTEGER := op1'LEFT;
      CONSTANT right : INTEGER := op1'RIGHT;
      VARIABLE result: BIT_VECTOR (size_op-1 DOWNTO 0) := (OTHERS => '0');
    BEGIN
      IF (op2 = 0) THEN
         RETURN (op1);
      END IF;
      IF (op2 >= size_op) THEN
         RETURN (result); 
      END IF;

      IF (left >= right) THEN
         result((size_op-1 - op2) DOWNTO 0) := op1(left DOWNTO (right + op2));
      ELSE
         result((size_op - 1 - op2) DOWNTO 0) := op1(left TO (right - op2));
      END IF;

      RETURN result;
    END sh_right;

END bit_arith;





