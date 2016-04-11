module selector_frecv(sw1,sw2,sw3,sw4,clk,reset,pshbtn_pl,pshbtn_mi,frecv_sel,q_modif);
parameter width=16;

input sw1,sw2,sw3,sw4;
input clk;
input reset;
input pshbtn_pl;
input pshbtn_mi;
output [width-1:0] frecv_sel;
output q_modif;

reg [width-1:0] frecv_reg;
reg [width-1:0] frecv_sel;
reg q_modif;
reg [width-1:0] comp1;
reg [width-1:0] comp2;


initial begin 
frecv_reg <= 1;
frecv_sel <= 'b0;
q_modif <= 0;
end

/* always @ (posedge clk)
begin 
if(frecv_sel > 1)
   comp1 <= 1;
   else comp1 <= 0;

end

always @ (posedge clk)
begin 
if(frecv_sel < 10000)
   comp2 <= 1;
   else comp2 <= 0;

end */


always @ (posedge clk or reset)
begin
if(sw4&(pshbtn_pl|pshbtn_mi))
   if(~pshbtn_mi&pshbtn_pl)
      frecv_sel <= frecv_reg + 1000;
	  else frecv_sel <= frecv_reg - 1000;
if(sw3&(pshbtn_pl|pshbtn_mi))
   if(~pshbtn_mi&pshbtn_pl)
      frecv_sel <= frecv_reg + 100;
	  else frecv_sel <= frecv_reg - 100;
if(sw2&(pshbtn_pl|pshbtn_mi))
   if(~pshbtn_mi&pshbtn_pl)
      frecv_sel <= frecv_reg + 10;
	  else frecv_sel <= frecv_reg - 10;
if(sw1&(pshbtn_pl|pshbtn_mi))
   if(~pshbtn_mi&pshbtn_pl)
      frecv_sel <= frecv_reg + 1;
	  else frecv_sel <= frecv_reg - 1;

	if(frecv_sel > 1)
		comp1 <= 1;
		else comp1 <= 0;  
	
	if(frecv_sel < 10000)
		comp2 <= 1;
		else comp2 <= 0;		
			
			if(comp2&comp1) begin
			frecv_reg <= frecv_sel;
			q_modif <= 1'b1;
			end
			else begin
			frecv_reg <= frecv_reg;
			q_modif <= 1'b0;
            end
end



endmodule



