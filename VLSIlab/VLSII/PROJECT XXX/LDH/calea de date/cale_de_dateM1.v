module cale_de_dateM(load,clk,reset,busy,OpA,OpB,mul,ready);
parameter width=8;

//input Ctrl;
output [{2*width-1}:0] mul;
output ready;
input clk;
input load;
input reset;
input busy;
input [width-1:0] OpA;
input [width-1:0] OpB;

reg [width-1:0] P;
reg [width-1:0] A;
reg [width-1:0] B;
reg readyR;
reg [width-1:0] Control;

wire[width-1:0] mul;
wire ready;

always @(posedge clk or reset)
begin
if(reset)
begin 
P <= 'b0;
A <= 'b0;
B <= 'b0;
readyR  <= 1'b0;
Control <= 'b0;
end
else 
   if(load)
       A <= OpA;
	   B <= OpB; 
		if(busy) 
		begin
			P <= P<<1;
			P[0] <= 0; 
		end
           if(A[width-1]== 1) 
		      begin
				P <= P + B;
				A <= A<<1;
				A[0] = 1'bx;
		      end
		   else 
		   P <= P;
		   A <= A<<1;
		      if(Control <= {width-2})
		         Control <= Control+1;
				 else
				   Control <= 'b0;
				   readyR <= 1;
				   
end

assign mul = P;
assign ready = readyR;

endmodule

