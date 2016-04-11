module cale_de_control (start,reset,clk,reset_cd,readyS,load,busy);
parameter width=8; 

input start;
input reset;
input clk;
output reset_cd;
output load;
output busy;
output readyS;
wire Q;
wire Q2;
wire Q3;
wire Q4;
wire Q5;

reg Q11,Q31,Q41,Q51;
reg startx;
reg loadx;
reg busyx;
reg readyyyx;
reg reset_cdx;

bistabil bis(	.D(start),
				.Q(Q),
				.clk(clk),
				.reset(reset));
				
				bistabil bis2(	.D(~start&Q),
								.Q(Q2),
								.clk(clk),
								.reset(reset));
								
				bistabil bis3(	.D(Q2&busy),
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
								
		initial begin
//num<={width{1'b0}};
reset_cdx <= 'b0;
loadx <= 'b0;
busyx <= 'b0;
startx <= 'b0;
readyyyx <='b0;
Q31 <= 'b0; Q41<='b0; Q51<='b0;
end						
							
always @ (posedge clk or reset)
	begin
	if(startx)
	   Q11<='b1;
	   else Q11<='b0;
	   if(Q31 | Q41 | Q51)
	   busyx<='b1;
		 if(((startx&Q11)|reset))
		 reset_cdx<=1;
		 else
		   if(start==0 && Q11==1)
		   loadx<=1;
		   else
		   if((~busy&load))
			Q31<=1;
			Q41<=0; 		
			Q51<=0;
		  /*  else
			if(num==1)
				Q3<=0; Q4<=1; Q5<=0;
				else
				if(num==2)
				Q3<=0; Q4<=0; Q5<=1;
					else  if(num>2)
						  Q3<=0; Q4<=0; Q5<=0;
			*/
	readyyyx<=(~busyx);

end
		
assign busy=busyx;		
assign reset_cd=reset_cdx;
assign load=loadx;
assign ready=readyyyx;



endmodule




