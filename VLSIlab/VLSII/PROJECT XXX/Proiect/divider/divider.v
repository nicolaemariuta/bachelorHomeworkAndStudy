module divider(clk,start,reset,ready,rest,cat,A,B );

	parameter x = 24;

	
	input clk;
	input start;
	input reset;
	input [x-1:0] A;
	input [x-1:0] B;
    output ready;
	output [x-1:0] rest;
	output [x-1:0] cat;
	wire reset_dataW;
	wire loadW;
	wire readyCtrlW;
	wire busyW;

	cale_de_control #(x) cale_de_control(
										.start(start),
										.clk(clk),
										.reset(reset),
										.reset_data(reset_dataW),
										.load(loadW),
										.readyCtrl(readyCtrlW),
										.busy(busyW));
	

cale_de_date #(x) cale_de_date(	.load(loadW),
						.reset(reset_dataW),
						.busy(busyW),
						.clk(clk),
						.A(A),
						.B(B),
						.rest(rest),
						.cat(cat),
						.readyCtrl(readyCtrlW),
						.ready(ready));


				


endmodule
