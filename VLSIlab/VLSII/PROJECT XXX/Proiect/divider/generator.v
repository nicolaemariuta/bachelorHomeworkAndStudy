module generator(clk,start,reset,A,B);
	parameter width=24;
	
	output clk;
	output start;
	output reset;
	output [width-1:0] A;
	output [width-1:0] B;
	
	reg mem;
	reg start1;
	reg reset1;
	reg [width-1:0] Areg;
	reg [width-1:0] Breg;
	initial
	begin
	mem <=0;
	reset1 <= 0;
	start1 <=0;
	Areg <= 24'b001001100010010110100000;
	Breg <= 24'b000000000001000001101000;
	#4 reset1 <=1;
	#1 reset1 <=0;
	#2 start1 <=1;
	#5 start1 <=0;
	end
	
always #1 mem <= ~mem;

assign clk = mem;
assign start = start1;
assign reset =reset1;
assign A = Areg;
assign B = Breg;
endmodule
