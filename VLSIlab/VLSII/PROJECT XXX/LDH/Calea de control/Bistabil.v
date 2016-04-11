module bistabil(clk,D,Q,reset );

	input D;
	input clk;
	input reset;
	output Q;
	reg mem;
	initial
	begin
	mem <=0;
	end
	
always @(posedge clk)
begin
if (reset)
mem <=0;
else
mem <=D;
end

assign Q = mem;

endmodule
