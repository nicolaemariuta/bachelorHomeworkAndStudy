module cale_de_date (load, reset, busy, clk, A, B, rest, cat, readyCtrl, ready );
parameter width=24;

input [width-1 :0] A;
input [width-1:0] B;
output [width-1 :0] rest;
output [width-1 :0] cat;
output ready;
input readyCtrl;
input load;
input clk;
input reset;
input busy;



reg [width:0] P;
reg [width-1:0] Areg;
reg [width-1:0] Breg;
reg [width-1:0] restReg;
reg [width-1:0] catReg;
reg readyReg;
reg [2:0] wait2clk;
reg msb;
reg [width:0]BregNeg; 

initial begin
P <= {width{1'b0}};
Areg <= {width{1'b0}};
Breg <= {width{1'b0}};
restReg <= {width{1'b0}};
catReg <= {width{1'b0}};
readyReg <=0;
wait2clk <=3'b0;
msb <=0;
BregNeg <= {width{1'b0}};
end

always @(posedge clk or reset)
begin  
BregNeg <=~Breg+1; 
if (wait2clk == 2'b10)
wait2clk <= 2'b00;
else
wait2clk <= wait2clk+1;
	if (reset)
	begin 
	P <= {width{1'b0}};
	Areg <= {width{1'b0}};
	Breg <= {width{1'b0}};
	restReg <= {width{1'b0}};
	catReg <= {width{1'b0}};	
	readyReg <=1'b0;	
	wait2clk <=3'b00;
	msb <=0;
	BregNeg <= {width{1'b0}};
	end 
	else
		if (load)
		begin 
		Areg <= A;
		Breg <= B;
		end
		else
			if (busy)
			begin
				if(wait2clk == 0)
				begin
				msb <= P[width];
				P <= {P[width-1:0],Areg[width-1]};
				end
				if(wait2clk == 1)
				begin
				if(msb == 1)
				P <= P+Breg;
				if(msb == 0)
				P <= P+BregNeg;
				end
				if(wait2clk == 2)
				Areg <= {Areg[width-2:0],~P[width]};	
			end 
				if (readyCtrl)
					begin
						if(P[width] == 1)
						restReg <=P[width-1:0]+B;  
						if(P[width] == 0)
						restReg <= P[width-2:0];
					catReg <= Areg[width-1:0];
					readyReg <= 1;
					end
           
end 

 assign rest = restReg;
 assign cat = catReg;	
 assign ready = readyReg;
      
endmodule




