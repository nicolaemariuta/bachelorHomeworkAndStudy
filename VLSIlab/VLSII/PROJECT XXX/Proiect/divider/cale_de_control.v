module cale_de_control (start,reset,clk,reset_data,load,readyCtrl,busy);
parameter width=24; //dimensiunea numaratorului in functie de timpul de lucru in care bussy =1

input start;
input reset;
input clk;
output reset_data;
output load;
output readyCtrl;
output busy;
wire Q;
wire Q2;
wire Q3;
wire Q4;
wire Q5;
wire Q6;

bistabil bis(	.D(start),
				.Q(Q),
				.clk(clk),
				.reset(reset));
				
				bistabil bis2(	.D(Q),
								.Q(Q2),
								.clk(clk),
								.reset(reset));
								
									bistabil bis3(	.D(Q2),
													.Q(Q3),
													.clk(clk),
													.reset(reset));
													
													bistabil bis4(	.D(Q3),
													.Q(Q4),
													.clk(clk),
													.reset(reset));
													
													bistabil bis5(	.D(Q4),
																	.Q(Q5),
																	.clk(clk),
																	.reset(reset));	

													bistabil bis6(	.D(Q5),
																	.Q(Q6),
																	.clk(clk),
																	.reset(reset));																		
reg [width-1:0] numREG;
reg reset_dataREG;
reg loadREG;
reg [2:0] readyCtrl1REG;
reg busyREG;
reg startREG;
reg readyREG;

initial begin
numREG <={width{1'b0}};
reset_dataREG <= 0;
loadREG <= 0;
readyCtrl1REG <= 0;
busyREG <= 0;
startREG <= 0;
readyREG <=0;
end

always @(posedge clk)
begin  
       if((Q || Q2 || Q3 || Q4 || Q5) && ~busyREG)
	      begin
	     startREG <= 1;
		 if(startREG)
		 begin
		readyREG <= 0 ;
		readyCtrl1REG <= 3'b0;
		end
		 end
	     else
	     startREG <= 0;
	if(reset)
	begin
numREG <={width{1'b0}};
reset_dataREG <= 0;
loadREG <= 0;
readyCtrl1REG <= 0;
busyREG <= 0;
startREG <= 0;
readyREG <=0;
	end
	else
		begin
			if(startREG)
			begin
				if(Q2 == 1)
				begin
				reset_dataREG <=1;
				readyREG <=0;
				readyCtrl1REG <= 3'b0;
				end
				else
				if(Q3 == 1)
				reset_dataREG <=0;
				else
				if(Q4 == 1)
				begin
				loadREG <= 1;
				end
				else
				if(Q5 == 1)
				loadREG <=0;
				else
				if(Q6 == 1)
				begin
				busyREG <=1;
				end
				else
				begin
				reset_dataREG <=0;
				loadREG <=0;
				end
			end
			if(busyREG)
			numREG <= numREG + 1;
			if(numREG == 72-2)    // 24=8*3  unde 8 e numarul de biti pe care il au operanzii impartiri. Durata 
			                    //impartirii este de 3 ori numarul de biti.
			begin
			numREG <= 0;
			busyREG <=0;
			readyREG <= 1;
			end
		end
readyCtrl1REG <= {readyREG,readyCtrl1REG[2:1]};
end

assign reset_data = reset_dataREG;
assign load = loadREG;
assign readyCtrl = readyCtrl1REG[0];
assign busy = busyREG;
endmodule




