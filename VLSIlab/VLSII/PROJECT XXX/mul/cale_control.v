module cale_de_control (start,reset,clk,load, busy, ready);

input start;
input reset;
input clk;
input ready;
output load;
output busy;

reg load;
reg busy;


always @(posedge clk or posedge reset)
if (reset)
	load <= 'b0; else
	if (start)
	load <= 'b1;
	   else load <= 0;
	
always @(posedge clk or posedge reset)
if (reset)
	busy <= 'b0; else
	if (ready)
	busy <= 'b0; else
	busy <= 'b1;
	
endmodule
