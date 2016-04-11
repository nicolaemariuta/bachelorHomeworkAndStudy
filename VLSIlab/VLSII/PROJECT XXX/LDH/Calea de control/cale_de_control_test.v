module cale_de_control_test();
	parameter x = 8;
	
    
	wire loadCCT;
	wire startCCT;
	wire resetCCT;
	wire clkCCT;
	wire reset_cdCCT;
	wire readySCCT;
	wire busyCCT;


cale_de_control  #(x) cale_de_control(		.start(startCCT),
											.reset(resetCCT),
											.clk(clkCCT),
											.reset_cd(reset_cdCCT),
											.load(loadCCT),
											.readyS(readySCCT),
											.busy(busyCCT));

	

tb1 #(x) TB (	.clk1(clkCCT),
				.reset1(resetCCT),
				.start1(startCCT));



endmodule
