module tb1(clk1,reset1,start1);
parameter width=8;

output clk1;
output reset1;
output start1;

reg clk;
reg reset;
reg start;


initial begin
clk <=0;
reset <= 0;
start <= 0;
#1 reset <= 1;
#2 reset <= 0;
#3 start <= 1;
#1 start <= 0;
#80 start <= 1;
#2 start <= 0;


end

always  #1  clk = ~clk;	 

assign start1 = start;
assign reset1 = reset;
assign clk1 = clk;

endmodule
