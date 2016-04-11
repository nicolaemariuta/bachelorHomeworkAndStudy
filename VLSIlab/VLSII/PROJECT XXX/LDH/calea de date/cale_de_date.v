module cale_de_date(load,clk,reset,busy,OpA,OpB,mul,ready);
parameter width = 8;

//input Ctrl;
output [{2*width-1}:0] mul;
output ready;
input clk;
input reset;
input load;
input busy;
input [width-1:0] OpA;
input [width-1:0] OpB;

reg [{2*width-1}:0] P;
reg [width-1:0] A;
reg [width-1:0] B;
reg readyR;
reg [{2*width-1}:0] Control;
reg [1:0] wait1;

wire[{2*width-1}:0] mul;
wire ready;

initial begin
readyR <= 'b0;
P <= 'b0;
wait1 <= 'b0;
end


always @ (posedge clk or reset)
begin
if (reset) begin
A <= 'b0;
readyR  <= 1'b0;
Control <= 'b0; end
	else
	if(load)
       A <= OpA;
	     if(wait1 == 1)
			if(((Control+1)<={2*width})&&busy)begin
		        A <= A<<1;
				A[0] = 1'bx; end
				    if(busy)
					    if(Control < {2*width})
						Control <= Control+1;
						else begin
						Control <= 'b0;
						readyR <= 1;
						end
	wait1 <= wait1+1;	  
end 

always @ (posedge clk or reset)
begin
if (reset)
B <= 'b0;
    else
	if(load)
       B <= OpB;
		  
end 

always @ (posedge clk or reset)
begin
if (reset)
P <= 'b0;
    else
	 if(wait1 == 0)
		if(busy) begin
			P <= P<<1;
			P[0] <= 0; end
			  if (wait1 == 1)
				if(A[width-1]== 1)
					P <= P+B;
						else 
						P <= P;
  
end 

assign mul = P;
assign ready = readyR;

endmodule


















