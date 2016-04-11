module constr_frecv(t_high,t_low,clk,reset,signal_o,pulse_o);
parameter width=6;

input [width-1:0] t_high;
input [width-1:0] t_low;
input clk;
input reset;
input pulse_o;
output [width-1:0] signal_o;

reg [width-1:0] count1;
reg [width-1:0] count2;
reg load;
reg cen1,cen2;
reg carry1,carry2;
reg [width-1:0] signal_o;

initial begin


end


always @ (posedge clk)
begin
if(count1==0)
carry1 <=1; else carry1 <= 0;
end

always @ (posedge clk)
begin
if(count2==0)
carry2 <=1; else carry2 <= 0;
end


always @ (posedge clk or reset)
begin
if (reset)
   load <=1;
	if (load) begin
      count1 <= t_high;
	  count2 <=t_low;  
	end
    else if(pulse_o&(~carry1))
         cen1 <= 1;
         else if (cen1)  begin
		      count1 <= count1 - 1;
			  signal_o <= 1;
			  end
			  if (pulse_o&(~carry2)&(~&count1)) 
			      cen2 <= 1;
				  else if(cen2) begin
				       count2 <= count2 -1;
					   signal_o <= 0;
					   end
			   
			 
end 


endmodule


