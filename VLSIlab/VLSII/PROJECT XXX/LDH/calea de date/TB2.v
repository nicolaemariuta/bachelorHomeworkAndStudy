module tb2(clk,reset,start,OpA,OpB);
parameter width = 8;

output clk;
output start;
output reset;
output[width-1:0] OpA;
output[width-1:0] OpB;

reg clk;
reg reset;
reg start;
reg [width-1:0] OpA;
reg [width-1:0] OpB;

initial begin
OpA <='b11101001;
OpB <='b11000011;
clk <= 'b0;
reset <= 'b0;
#5 reset <= 1;
#20 reset <= 0;
#10 start <= 1;
#30 start <= 0;

end

always  #5  clk = ~clk;	 

endmodule
