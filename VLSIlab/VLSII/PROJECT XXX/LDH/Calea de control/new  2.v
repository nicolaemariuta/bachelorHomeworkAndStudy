module tb(clk1,reset1,start1);
parameter width=8;

output clk1;
output reset1;
output start1;

reg clk;
reg reset;
reg start1;

initial begin
clk<=0;
reset<=0;
start<=0;
#1 reset<=1;
#2 reset<=0;
#3 start<=1;
#1 start<=0;
#40 start<=1;
#2 start<=0;

end

always #1 clk =~clk;

assign clk=clk1;
assign reset=reset1;
assign start=start1;

endmodule

