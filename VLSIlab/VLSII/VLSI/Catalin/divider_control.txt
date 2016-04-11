--
--
--
--                                  +-------------------------+
--                                  | Divider Control Module  |
--                                  +-------------------------+
--                                  |                         |
--                                 >|clk                 ready|>
--                                 >|reset              end_op|>
--                                 >|start             load_op|>
--                                 >|neg_p_p           shift_a|>
--                                 >|neg_p_r       shift_p_poz|>
--                                  |              shift_p_neg|>
--                                  |                  sub_p_b|>
--                                  |                  add_p_b|>
--                                  |                add_final|>
--                                  +-------------------------+

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-----------------------------------Divider Cotrol Module--------------------------------------------------------

entity divider_control is
    port ( clk 		: in std_logic;
           reset 	: in std_logic;
           start 	: in std_logic;
           neg_p_p 	: in std_logic;
           neg_p_r 	: in std_logic;
           ready 	: out std_logic;
           end_op 	: out std_logic;
           load_op 	: out std_logic;
           shift_a	: out std_logic;
           shift_p_poz	: out std_logic;
           shift_p_neg  : out std_logic;
           sub_p_b 	: out std_logic;
           add_p_b 	: out std_logic;
           add_final 	: out std_logic
           );
end divider_control;

architecture divider_control_arch of divider_control is
	    
      type stare is (InitST, SetupST, CheckST, ShiftPNegST, ShiftPPozST, ShiftAST, EndOpST, SubST, AddST, AddFinalST);

	signal curenta 		: stare;
        signal urmatoare	: stare;
        signal valid		: std_logic;
        signal count 		: integer;

	begin
	STMachine : process (reset, curenta, start, neg_p_p, neg_p_r, count, valid) begin
           case curenta is
-----------------------------------------------------------------------------------------------------------------         
		when InitST =>
                   if (reset = '0') then urmatoare <= InitST;
                      elsif (start = '1') then urmatoare <= SetupST;
                        else urmatoare <= InitST;
                   end if;
-----------------------------------------------------------------------------------------------------------------
	       when SetupST =>
                   if (reset = '0') then urmatoare <= InitST;
                      else urmatoare <= CheckST;
                   end if;
-----------------------------------------------------------------------------------------------------------------
	       when CheckST =>
		   if (reset = '0') then urmatoare <= InitST;
		       elsif (neg_p_p = '1') then  urmatoare <= ShiftPNegST;
			  else urmatoare <= ShiftPPozST;
		   end if;
-----------------------------------------------------------------------------------------------------------------
	       when ShiftPNegST =>
		   if (reset = '0') then urmatoare <= InitST;
		       else urmatoare <= AddST;
     		  end if;
-----------------------------------------------------------------------------------------------------------------
	       when AddST =>
		   if (reset = '0') then urmatoare <= InitST;
		       else urmatoare <= ShiftAST;
   		end if;
-----------------------------------------------------------------------------------------------------------------
	       when ShiftAST =>
		   if (reset = '0') then urmatoare <= InitST;
		       elsif (count = 1) then urmatoare <= EndOpST;
			  else urmatoare <= CheckST;
      		   end if;
-----------------------------------------------------------------------------------------------------------------
	       when ShiftPPozST =>
		   if (reset = '0') then urmatoare <= InitST;
		       else urmatoare <= SubST;
      		   end if;
-----------------------------------------------------------------------------------------------------------------
	       when SubST =>
		   if (reset = '0') then urmatoare <= InitST;
		       else urmatoare <= ShiftAST;
     		   end if;
-----------------------------------------------------------------------------------------------------------------
	       when EndOpST =>
		   if (reset = '0') then urmatoare <= InitST;
		       elsif (neg_p_r = '1') then urmatoare <= AddFinalST;
			  else urmatoare <= InitST;
      		   end if;
-----------------------------------------------------------------------------------------------------------------
	       when AddFinalST =>
		   if (reset = '0') then urmatoare <= InitST;
		       else urmatoare <= InitST;
		  end if;
-----------------------------------------------------------------------------------------------------------------
	   end case;

-----------------------------------------------------------------------------------------------------------------
	   if (curenta = SetupST) then load_op <= '1';
              else load_op <= '0';
           end if;
-----------------------------------------------------------------------------------------------------------------
	   if (curenta = ShiftPNegST) then shift_p_neg <= '1';
	      else shift_p_neg <= '0';
	   end if;
-----------------------------------------------------------------------------------------------------------------
	   if (curenta = ShiftPPozST) then shift_p_poz <= '1';
	      else shift_p_poz <= '0';
	   end if;
-----------------------------------------------------------------------------------------------------------------
	   if (curenta = AddST) then add_p_b <= '1';
	      else add_p_b <= '0';
	   end if;
-----------------------------------------------------------------------------------------------------------------
	   if (curenta = SubST) then sub_p_b <= '1';
	      else sub_p_b <= '0';
	   end if;
-----------------------------------------------------------------------------------------------------------------
	   if (curenta = EndOpST) then end_op <= '1';
	      else end_op <= '0';
	   end if;
-----------------------------------------------------------------------------------------------------------------
	   if (curenta = AddFinalST) then add_final <= '1';
	      else add_final <= '0';
	   end if;
-----------------------------------------------------------------------------------------------------------------
	   if (curenta = ShiftAST) then shift_a <= '1';
	      else shift_a <= '0';
	   end if;
-----------------------------------------------------------------------------------------------------------------
	end process STMachine;

-----------------------------------------------------------------------------------------------------------------
	REG : process (clk) begin
          if ((not clk'stable) and (clk = '1')) then
              curenta <= urmatoare;
          end if; 
        end process REG;
-----------------------------------------------------------------------------------------------------------------
	Counter : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then count <= 1;
               elsif (curenta = InitST) then count <= 4;
                    elsif (curenta = ShiftAST) then count <= count - 1;
               end if;
           end if;
        end process Counter;
-----------------------------------------------------------------------------------------------------------------
	Validation : process (clk) begin
          if ((not clk'STABLE ) and (clk = '1')) then
              if (reset = '0') then valid <= '0';
                  elsif (curenta = EndOpST) then valid <= '1';
                    elsif (curenta = AddFinalST) then valid <= '1';
		      elsif (curenta = InitST) then valid <='0';
              end if;
          end if;
       end process Validation;
      ready <= valid;
-----------------------------------------------------------------------------------------------------------------
end divider_control_arch;




