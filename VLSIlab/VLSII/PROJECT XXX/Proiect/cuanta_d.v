module cuanta (cat,q_modif,reset,clk,pulse_o);
parameter width=23;


input [width-1:0] cat;
input q_modif;
input reset;
input clk;
output pulse_o;

reg [width-1:0] count;
reg pulse_o;
reg [width-1:0] cat_hold;

always @ (posedge clk or reset)
begin
if(reset) begin
count <= 'b1;
cat_hold <= 'b0; end
      else if(pulse_o)
	          if(q_modif)
			  begin
			  cat_hold <= cat;
		      count <= cat; end
			  else 
			  count <= cat_hold;
                 if(~&count)
				    pulse_o <=1;
					else pulse_o <= 0;


end

endmodule


