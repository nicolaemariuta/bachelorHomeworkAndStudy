module cale_de_date_test();

	parameter x = 8;
    wire loadMUL;
	wire resetMUL;
	wire busyMUL;
	wire clkMUL;
	wire [{2*x-1}:0] mulMUL;
	wire [x-1:0] AMUL;
	wire [x-1:0] BMUL;
	wire readyMUL;
	wire startNET;

cale_de_date #(x) DUT_d     (	.load(loadMUL),
							.reset(resetMUL), 
							.mul(mulMUL),
							.busy(busyMUL), 
							.clk(clkMUL), 
							.OpA(AMUL), 
							.OpB(BMUL),  
							.ready(readyMUL));


tb2 #(x) TB(	.clk(clkMUL),
				.reset(resetMUL),
				.OpA(AMUL),
				.OpB(BMUL),
				.start(startNET));

cale_de_control #(x) DUT_c (.load(loadMUL),
							.reset(resetMUL), 
							.clk(clkMUL),
							.busy(busyMUL),
							.start(startNET),
							.ready(readyMUL));



endmodule
