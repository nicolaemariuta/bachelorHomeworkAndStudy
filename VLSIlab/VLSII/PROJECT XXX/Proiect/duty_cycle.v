module duty_cycle (pshbtn_p, pshbtn_m,clk,reset,t_high,t_low);
parameter  width=5;


input pshbtn_p;
input pshbtn_m;
input clk;
input reset;
output [width-1:0] t_high;
output [width-1:0] t_low;

reg [width-1:0] data;
reg comp1,comp2;

initial begin
data <= 1010;
end

always @ (posedge clk)
begin 
if(data > 1)
   comp1 <= 1;
   else comp1 <= 0;

end

always @ (posedge clk)
begin 
if(data < 19)
   comp2 <= 1;
   else comp2 <= 0;

end


always @ (posedge clk or reset)
begin
if(reset)
    data <= 1010;
	else if((pshbtn_p|pshbtn_m)&(comp1&comp2)) begin
              if (~pshbtn_m & pshbtn_p)
                   data <= data + 1; else
				   data <= data -1; end
         else data <= data;


end

assign t_high = data;
assign t_low= 10100 - data;

endmodule




