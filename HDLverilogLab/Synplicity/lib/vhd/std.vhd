--
-- This version of the STANDARD package is
-- Specific to Synplify and is not usable for simulation
-- Copyright (c) 1994, Synplicity, Inc. All rights reserved
--
-- The => operator is used to specify a built in implementation 
-- for a type or function.
--
-- $Header: s:/rcs/vhdl/vhd/RCS/std.vhd 1.6 1998/12/09 01:41:41 mahmood Exp $
--
package STANDARD is

    type BOOLEAN is (FALSE, TRUE) => ('0', '1');
    function "and" (a, b : BOOLEAN) return BOOLEAN => "and";
    function "or"  (a, b : BOOLEAN) return BOOLEAN => "or";
    function "nand"(a, b : BOOLEAN) return BOOLEAN => "nand";
    function "nor" (a, b : BOOLEAN) return BOOLEAN => "nor";
    function "xor" (a, b : BOOLEAN) return BOOLEAN => "xor";
    function "xnor"(a, b : BOOLEAN) return BOOLEAN => "xnor";
    function "not" (a : BOOLEAN) return BOOLEAN    => "not";
    function "="   (a, b : BOOLEAN) return BOOLEAN => "eq";
    function "/="  (a, b : BOOLEAN) return BOOLEAN => "noteq";
    function "<"   (a, b : BOOLEAN) return BOOLEAN => "lt";
    function "<="  (a, b : BOOLEAN) return BOOLEAN => "le";
    function ">"   (a, b : BOOLEAN) return BOOLEAN => "gt";
    function ">="  (a, b : BOOLEAN) return BOOLEAN => "ge";

    type BIT is ('0', '1') => ('0', '1');
    function "and" (a, b : BIT) return BIT  => "and";
    function "or"  (a, b : BIT) return BIT  => "or";
    function "nand"(a, b : BIT) return BIT  => "nand";
    function "nor" (a, b : BIT) return BIT  => "nor";
    function "xor" (a, b : BIT) return BIT  => "xor";
    function "xnor"(a, b : BIT) return BIT  => "xnor";
    function "not" (a : BIT) return BIT     => "not";
    function "="   (a, b : BIT) return BOOLEAN => "eq";
    function "/="  (a, b : BIT) return BOOLEAN => "noteq";
    function "<"   (a, b : BIT) return BOOLEAN => "lt";
    function "<="  (a, b : BIT) return BOOLEAN => "le";
    function ">"   (a, b : BIT) return BOOLEAN => "gt";
    function ">="  (a, b : BIT) return BOOLEAN => "ge";

    type CHARACTER is (
        NUL, SOH, STX, ETX, EOT, ENQ, ACK, BEL,
        BS,  HT,  LF,  VT,  FF,  CR,  SO,  SI,
        DLE, DC1, DC2, DC3, DC4, NAK, SYN, ETB,
        CAN, EM,  SUB, ESC, FSP, GSP, RSP, USP,

        ' ', '!', '"', '#', '$', '%', '&', ''',
        '(', ')', '*', '+', ',', '-', '.', '/',
        '0', '1', '2', '3', '4', '5', '6', '7',
        '8', '9', ':', ';', '<', '=', '>', '?',

        '@', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
        'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',
        'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
        'X', 'Y', 'Z', '[', '\', ']', '^', '_',

        '`', 'a', 'b', 'c', 'd', 'e', 'f', 'g',
        'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
        'p', 'q', 'r', 's', 't', 'u', 'v', 'w',
        'x', 'y', 'z', '{', '|', '}', '~', DEL);
    function "="   (a, b : CHARACTER) return BOOLEAN => "eq";
    function "/="  (a, b : CHARACTER) return BOOLEAN => "noteq";
    function "<"   (a, b : CHARACTER) return BOOLEAN => "lt";
    function "<="  (a, b : CHARACTER) return BOOLEAN => "le";
    function ">"   (a, b : CHARACTER) return BOOLEAN => "gt";
    function ">="  (a, b : CHARACTER) return BOOLEAN => "ge";

    type SEVERITY_LEVEL is (NOTE, WARNING, ERROR, FAILURE);
    function "="   (a, b : SEVERITY_LEVEL) return BOOLEAN => "eq";
    function "/="  (a, b : SEVERITY_LEVEL) return BOOLEAN => "noteq";
    function "<"   (a, b : SEVERITY_LEVEL) return BOOLEAN => "lt";
    function "<="  (a, b : SEVERITY_LEVEL) return BOOLEAN => "le";
    function ">"   (a, b : SEVERITY_LEVEL) return BOOLEAN => "gt";
    function ">="  (a, b : SEVERITY_LEVEL) return BOOLEAN => "ge";

    type INTEGER;
    function "="   (a, b : INTEGER) return BOOLEAN => "eq";
    function "/="  (a, b : INTEGER) return BOOLEAN => "noteq";
    function "<"   (a, b : INTEGER) return BOOLEAN => "slt";
    function "<="  (a, b : INTEGER) return BOOLEAN => "sle";
    function ">"   (a, b : INTEGER) return BOOLEAN => "sgt";
    function ">="  (a, b : INTEGER) return BOOLEAN => "sge";
    function "+"   (a : INTEGER) return INTEGER => "uplus";
    function "-"   (a : INTEGER) return INTEGER => "uminus";
    function "abs" (a : INTEGER) return INTEGER;
    function "+"   (a, b : INTEGER) return INTEGER => "plus";
    function "-"   (a, b : INTEGER) return INTEGER => "minus";
    function "*"   (a, b : INTEGER) return INTEGER => "smult";
    function "/"   (a, b : INTEGER) return INTEGER => "div";
    function "mod" (a, b : INTEGER) return INTEGER => "mod";
    function "rem" (a, b : INTEGER) return INTEGER => "rem";
    function "**"  (a : INTEGER; e : INTEGER) return INTEGER => "exp";
    type INTEGER is range -2147483647 to 2147483647;

    type REAL;
    function "="   (a, b : REAL) return BOOLEAN => "eq";
    function "/="  (a, b : REAL) return BOOLEAN => "noteq";
    function "<"   (a, b : REAL) return BOOLEAN => "lt";
    function "<="  (a, b : REAL) return BOOLEAN => "le";
    function ">"   (a, b : REAL) return BOOLEAN => "gt";
    function ">="  (a, b : REAL) return BOOLEAN => "ge";
    function "+"   (a : REAL) return REAL => "uplus";
    function "-"   (a : REAL) return REAL => "uminus";
    function "abs" (a : REAL) return REAL;
    function "+"   (a, b : REAL) return REAL => "plus";
    function "-"   (a, b : REAL) return REAL => "minus";
    function "*"   (a, b : REAL) return REAL => "mult";
    function "/"   (a, b : REAL) return REAL => "div";
    function "**"  (a : REAL; e : INTEGER) return REAL => "exp";
    type REAL is range -1000000.0 to 1000000.0;
    type TIME is range -2147483647 to 2147483647
        units
            ps;            -- picosecond
            ns = 1000 ps;  -- nanosecond
            us = 1000 ns;  -- microsecond
        end units;
    function "="   (a, b : TIME) return BOOLEAN => "eq";
    function "/="  (a, b : TIME) return BOOLEAN => "noteq";
    function "<"   (a, b : TIME) return BOOLEAN => "slt";
    function "<="  (a, b : TIME) return BOOLEAN => "sle";
    function ">"   (a, b : TIME) return BOOLEAN => "sgt";
    function ">="  (a, b : TIME) return BOOLEAN => "sge";
    function "+"   (a : TIME) return TIME => "uplus";
    function "-"   (a : TIME) return TIME => "uminus";
    function "abs" (a : TIME) return TIME;
    function "+"   (a, b : TIME) return TIME => "plus";
    function "-"   (a, b : TIME) return TIME => "minus";
    function "*"   (a, b : TIME) return TIME => "smult";
    function "/"   (a, b : TIME) return TIME => "div";
    function "mod" (a, b : TIME) return TIME => "mod";
    function "rem" (a, b : TIME) return TIME => "rem";
    function "**"  (a : TIME; e : INTEGER) return TIME => "exp";
    subtype NATURAL is INTEGER range 0 to INTEGER'HIGH;
    subtype POSITIVE is INTEGER range 1 to INTEGER'HIGH;
    type STRING is array (POSITIVE range <>) of CHARACTER;
    type BIT_VECTOR is array (NATURAL range <>) of BIT;
    function "and" (a, b : BIT_VECTOR) return BIT_VECTOR  => "and";
    function "or"  (a, b : BIT_VECTOR) return BIT_VECTOR  => "or";
    function "nand"(a, b : BIT_VECTOR) return BIT_VECTOR  => "nand";
    function "nor" (a, b : BIT_VECTOR) return BIT_VECTOR  => "nor";
    function "xor" (a, b : BIT_VECTOR) return BIT_VECTOR  => "xor";
    function "xnor"(a, b : BIT_VECTOR) return BIT_VECTOR  => "xnor";
    function "not" (a : BIT_VECTOR) return BIT_VECTOR     => "not";
    function "sll" (a : BIT_VECTOR; d : INTEGER) return BIT_VECTOR  => "sll";
    function "srl" (a : BIT_VECTOR; d : INTEGER) return BIT_VECTOR  => "srl";
    function "sla" (a : BIT_VECTOR; d : INTEGER) return BIT_VECTOR  => "sla";
    function "sra" (a : BIT_VECTOR; d : INTEGER) return BIT_VECTOR  => "sra";
    function "rol" (a : BIT_VECTOR; d : INTEGER) return BIT_VECTOR  => "rol";
    function "ror" (a : BIT_VECTOR; d : INTEGER) return BIT_VECTOR  => "ror";
    function "="   (a, b : BIT_VECTOR) return BOOLEAN => "eq";
    function "/="  (a, b : BIT_VECTOR) return BOOLEAN => "noteq";
    function "<"   (a, b : BIT_VECTOR) return BOOLEAN => "lt";
    function "<="  (a, b : BIT_VECTOR) return BOOLEAN => "le";
    function ">"   (a, b : BIT_VECTOR) return BOOLEAN => "gt";
    function ">="  (a, b : BIT_VECTOR) return BOOLEAN => "ge";
    function NOW return TIME;
end standard;

package body standard is
    -- abs is not mapped directly to an implementation.
    function "abs" (a : INTEGER) return INTEGER is
    begin
        if a < 0 then
            return -a;
        else
            return a;
        end if;
    end;
end standard;
