module debouncer (data,clk,reset,out);
parameter width=64;

input [width-1:0] data ;
input clk;
input reset;
output out;

reg [width-1:0] data;
reg out;

initial begin
data <= 'b0;
end


always @ (posedge clk or reset)
begin
if(reset)
   data <= 'b0;
   else if(&data)
           out <=1;
		   else out <= 0;
                  
end


endmodule



