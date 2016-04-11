module test_bench(data, count_to, load, cen, clk, reset);

parameter width = 4;

output [width-1 : 0] data;
output [width-1 : 0] count_to;
output load;
output cen;
output clk;
output reset;


reg [width-1 : 0] data;
reg [width-1 : 0] count_to;
reg load;
reg cen;
reg clk;
reg reset;


initial
begin
	reset =0;
	clk = 0;
	data = 4'b0111;
	cen =0;
	load = 0;
	count_to = 4'b1100;
#2 reset = 1;
#7 cen =1;
#5 load =1;
#10 cen = 0;
#14 cen = 1;
#24 load = 0;
#25 load = 1;


end

always 
  #1 clk <= ~clk;
  
  
 endmodule




