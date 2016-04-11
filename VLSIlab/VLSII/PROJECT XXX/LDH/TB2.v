module tb2(clk1,reset1,load1,busy1,A1,B1,readyR1);
parameter width=8;

output clk1;
output reset1;
output load1;
output busy1;
output readyR1;
output[width-1:0] A1;
output[width-1:0] B1;

reg clk;
reg reset;
reg load;
reg busy;
reg readyR;
reg [width-1:0] A;
reg [width-1:0] B;


initial begin
A<='b11101001;
B<='b11000011;
clk <=0;
reset <= 0;
load <= 0;
busy <= 0;
readyR <=0;
#5 reset <= 1;
#40 reset <= 0;
#5 load <= 1;
#10 load <= 0;
#5 busy <= 1;
#300 busy <= 0;
#5 readyR <= 1;
end

always  #5  clk = ~clk;	 

assign A1 = A;
assign B1 = B;
assign load1 = load;
assign reset1 = reset;
assign busy1 = busy;
assign clk1 = clk;
assign readyR1 = readyR; 

endmodule
