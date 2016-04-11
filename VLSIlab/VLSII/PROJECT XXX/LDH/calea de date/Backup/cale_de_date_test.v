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

cale_de_dateM #(x) cale_de_dateM(	.load(loadMUL),
									.reset(resetMUL), 
									.mul(mulMUL),
									.busy(busyMUL), 
									.clk(clkMUL), 
									.OpA(AMUL), 
									.OpB(BMUL),  
									.ready(readyMUL));


tb2 #(x) TB(		.clk1(clkMUL),
				.reset1(resetMUL),
				.load1(loadMUL),
				.busy1(busyMUL),
				.A1(AMUL),
				.B1(BMUL),
				.readyR1(readyMUL));



endmodule
