-----------------------------------------------------------------------------
--                                                                         --
-- Copyright (c) 1994, 1990 - 1993 by Synopsys, Inc.  All rights reserved. --
--                                                                         --
-- This source file may be used and distributed without restriction        --
-- provided that this copyright statement is not removed from the file     --
-- and that any derivative work contains this copyright notice.            --
--                                                                         --
--                                                                         --
--  Package name: std_logic_unsigned                                       --
--                                                                         --
--  Description:  This package contains a set of unsigned arithemtic       --
--                operators and functions.                                 --
--                                                                         --
--                                                                         --
--                                                                         --
-----------------------------------------------------------------------------
-- $Header: s:/rcs/vhdl/vhd/RCS/unsigned.vhd 1.5 1997/03/27 23:19:53 ken Exp $

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

package std_logic_unsigned is

    function "+"(L: STD_LOGIC_VECTOR; R: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR => "plus";
    function "+"(L: STD_LOGIC_VECTOR; R: INTEGER) return STD_LOGIC_VECTOR => "plus";
    function "+"(L: INTEGER; R: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR => "plus";
    function "+"(L: STD_LOGIC_VECTOR; R: STD_LOGIC) return STD_LOGIC_VECTOR => "plus";
    function "+"(L: STD_LOGIC; R: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR => "plus";

    function "-"(L: STD_LOGIC_VECTOR; R: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR => "minus";
    function "-"(L: STD_LOGIC_VECTOR; R: INTEGER) return STD_LOGIC_VECTOR => "minus";
    function "-"(L: INTEGER; R: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR => "minus";
    function "-"(L: STD_LOGIC_VECTOR; R: STD_LOGIC) return STD_LOGIC_VECTOR => "minus";
    function "-"(L: STD_LOGIC; R: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR => "minus";

    function "+"(L: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR => "uplus";

    function "*"(L: STD_LOGIC_VECTOR; R: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR => "mult";

    function "<"(L: STD_LOGIC_VECTOR; R: STD_LOGIC_VECTOR) return BOOLEAN => "lt";
    function "<"(L: STD_LOGIC_VECTOR; R: INTEGER) return BOOLEAN => "lt";
    function "<"(L: INTEGER; R: STD_LOGIC_VECTOR) return BOOLEAN => "lt";


    function "<="(L: STD_LOGIC_VECTOR; R: STD_LOGIC_VECTOR) return BOOLEAN => "le";
    function "<="(L: STD_LOGIC_VECTOR; R: INTEGER) return BOOLEAN => "le";
    function "<="(L: INTEGER; R: STD_LOGIC_VECTOR) return BOOLEAN => "le";


    function ">"(L: STD_LOGIC_VECTOR; R: STD_LOGIC_VECTOR) return BOOLEAN => "gt";
    function ">"(L: STD_LOGIC_VECTOR; R: INTEGER) return BOOLEAN => "gt";
    function ">"(L: INTEGER; R: STD_LOGIC_VECTOR) return BOOLEAN => "gt";


    function ">="(L: STD_LOGIC_VECTOR; R: STD_LOGIC_VECTOR) return BOOLEAN => "ge";
    function ">="(L: STD_LOGIC_VECTOR; R: INTEGER) return BOOLEAN => "ge";
    function ">="(L: INTEGER; R: STD_LOGIC_VECTOR) return BOOLEAN => "ge";


    function "="(L: STD_LOGIC_VECTOR; R: STD_LOGIC_VECTOR) return BOOLEAN => "eq";
    function "="(L: STD_LOGIC_VECTOR; R: INTEGER) return BOOLEAN => "eq";
    function "="(L: INTEGER; R: STD_LOGIC_VECTOR) return BOOLEAN => "eq";


    function "/="(L: STD_LOGIC_VECTOR; R: STD_LOGIC_VECTOR) return BOOLEAN => "noteq";
    function "/="(L: STD_LOGIC_VECTOR; R: INTEGER) return BOOLEAN => "noteq";
    function "/="(L: INTEGER; R: STD_LOGIC_VECTOR) return BOOLEAN => "noteq";

    function SHL(ARG:STD_LOGIC_VECTOR;COUNT: STD_LOGIC_VECTOR) 
	return STD_LOGIC_VECTOR => "sll";
    function SHR(ARG:STD_LOGIC_VECTOR;COUNT: STD_LOGIC_VECTOR) 
	return STD_LOGIC_VECTOR => "srl";

    function CONV_INTEGER(ARG: STD_LOGIC_VECTOR) return INTEGER => "bufi";

end std_logic_unsigned;

