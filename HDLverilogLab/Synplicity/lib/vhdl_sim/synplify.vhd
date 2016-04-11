-----------------------------------------------------------------------------
--                                                                         --
-- Copyright (c) 1997 by Synplicity, Inc.  All rights reserved.            --
--                                                                         --
-- This source file may be used and distributed without restriction        --
-- provided that this copyright statement is not removed from the file     --
-- and that any derivative work contains this copyright notice.            --
--                                                                         --
-- Primitive library for post synthesis simulation                         --
-- These models are not intended for efficient synthesis                   --
--                                                                         --
-----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
entity prim_counter is
    generic (w : integer := 8);
    port (
        q : buffer std_logic_vector(w - 1 downto 0);
        cout : out std_logic;
        d : in std_logic_vector(w - 1 downto 0);
        cin : in std_logic;
        clk : in std_logic;
        rst : in std_logic;
        load : in std_logic;
        en : in std_logic;
        updn : in std_logic
    );
end prim_counter;

architecture beh of prim_counter is
    signal nextq : std_logic_vector(w - 1 downto 0);
begin
    nxt: process (q, cin, updn)
        variable i : integer;
        variable nextc, c : std_logic;
    begin
        nextc := cin;
        for i in 0 to w - 1 loop
            c := nextc;
            nextq(i) <= c xor (not updn) xor q(i);
            nextc := (c and (not updn)) or 
                 (c and q(i)) or
                 ((not updn) and q(i));
        end loop;
        cout <= nextc;
    end process;

    ff : process (clk, rst)
    begin
        if rst = '1' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            q <= nextq;
        end if;
    end process ff;
end beh;

library ieee;
use ieee.std_logic_1164.all;
entity prim_dff is
    port (q : out std_logic;
          d : in std_logic;
          clk : in std_logic;
          r : in std_logic := '0';
          s : in std_logic := '0');
end prim_dff;

architecture beh of prim_dff is
begin
    ff : process (clk, r, s)
    begin
        if r = '1' then
            q <= '0';
        elsif s = '1' then
            q <= '1';
        elsif rising_edge(clk) then
            q <= d;
        end if;
    end process ff;
end beh;

library ieee;
use ieee.std_logic_1164.all;
entity prim_latch is
    port (q : out std_logic;
          d : in std_logic;
          clk : in std_logic;
          r : in std_logic := '0';
          s : in std_logic := '0');
end prim_latch;

architecture beh of prim_latch is
begin
    q <= '0' when r = '1' else
         '1' when s = '1' else
         d when clk = '1';
end beh;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity prim_ramd is
generic (
   data_width : integer := 4;
    addr_width : integer := 5);
port (
    dout : out std_logic_vector(data_width-1 downto 0);
    aout : in std_logic_vector(addr_width-1 downto 0);
    din  : in std_logic_vector(data_width-1 downto 0);
    ain : in std_logic_vector(addr_width-1 downto 0);
    we   : in std_logic;
    clk  : in std_logic);
end prim_ramd;

architecture beh of prim_ramd is

constant depth : integer := 2** addr_width;
type mem_type is array (depth-1 downto 0) of std_logic_vector (data_width-1 downto 0);
signal mem: mem_type;

begin  

dout <= mem(conv_integer(aout));

process (clk)
    begin
        if rising_edge(clk) then    
            if (we = '1') then
                mem(conv_integer(ain)) <= din;
            end if;
        end if;
end process;

end beh ;


library ieee;
use ieee.std_logic_1164.all;
package components is
    component prim_counter
        generic (w : integer);
        port (
            q : buffer std_logic_vector(w - 1 downto 0);
            cout : out std_logic;
            d : in std_logic_vector(w - 1 downto 0);
            cin : in std_logic;
            clk : in std_logic;
            rst : in std_logic;
            load : in std_logic;
            en : in std_logic;
            updn : in std_logic
        );
    end component;
    component prim_dff
        port (q : out std_logic;
              d : in std_logic;
              clk : in std_logic;
              r : in std_logic := '0';
              s : in std_logic := '0');
    end component;
    component prim_latch
        port (q : out std_logic;
              d : in std_logic;
              clk : in std_logic;
              r : in std_logic := '0';
              s : in std_logic := '0');
    end component;

    component prim_ramd is
    generic (
        data_width : integer := 4;
        addr_width : integer := 5);
    port (
        dout : out std_logic_vector(data_width-1 downto 0);
        aout : in std_logic_vector(addr_width-1 downto 0);
        din  : in std_logic_vector(data_width-1 downto 0);
        ain : in std_logic_vector(addr_width-1 downto 0);
        we   : in std_logic;
        clk  : in std_logic);
    end component;

end components;
