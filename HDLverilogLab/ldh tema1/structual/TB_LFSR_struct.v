module test_bench_struct(data, count_to, load, cen, clk, reset);

parameter width = 6;

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
	reset = 0;
	clk = 0;
	data = 6'b001011;
	cen =0;
	load = 0;
	count_to = 6'b010000;
#2  reset = 1;
#70 cen =1;
#50 load =1;
#100 cen = 0;
#140 cen = 1;
#170 load = 0;
#200 load = 1;


end

always 
  #2 clk <= ~clk;
  
  
 endmodule

