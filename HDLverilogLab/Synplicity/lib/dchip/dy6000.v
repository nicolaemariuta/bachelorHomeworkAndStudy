// Verilog Dynachip/dy6000/dl6000 Import library.
// Copyright 1995 Synplicity Inc.

module g1clk(y,a) /* synthesis black_box black_box_pad_pin="a" */;
	input a;
	output y;
endmodule

module g2clk(y,a) /* synthesis black_box black_box_pad_pin="a" */;
	input a;
	output y;
endmodule

module gsr(y,a) /* synthesis black_box black_box_pad_pin="a" */;
	input a;
	output y;
endmodule

module CLKOB(y,oe,a) /* synthesis black_box black_box_pad_pin="y" */;
	input a;
	input oe;
	output y;

endmodule

module IB(y,a) /* synthesis black_box black_box_pad_pin="a" */;
	input a;
	output y;
endmodule

module OB(y,a) /* synthesis black_box black_box_pad_pin="y" */;
	input a;
	output y;
endmodule

module OBR(Q,CLK,EN,D) /* synthesis black_box black_box_pad_pin="Q" */;
	input CLK;
	input EN;
	input D;
	output Q;
endmodule

module OBRT(Q,CLK,OE,EN,D) /* synthesis black_box black_box_pad_pin="Q" */;
	output Q;
	input CLK;
	input OE;
	input EN;
	input D;
endmodule

module BIDIRR(IO, CLK1, OE, D, EN, CLK2, Q) /* synthesis black_box black_box_pad_pin="IO" */;
	inout IO;
	input CLK1;
	input OE;
	input D;
	input EN;
	input CLK2;
	output Q;
endmodule

module BIDIRN(IO, CLK, EN, OE, A, Q) /* synthesis black_box black_box_pad_pin="IO" */;
	inout IO;
	input CLK;
	input EN;
	input OE;
	input A;
	output Q;
endmodule

module BIDINR(IO, CLK, EN, OE, D, Y) /* synthesis black_box black_box_pad_pin="IO" */;
	inout IO;
	input CLK;
	input EN;
	input OE;
	input D;
	output Y;
endmodule

module rams32x1(clk, we, d, a0,a1,a2,a3,a4, r)/* synthesis black_box */;
input clk, we, d, a0,a1,a2,a3,a4;
output r;
endmodule


module rams32x1r(clk, we, d, a0,a1,a2,a3,a4, mr, r)/* synthesis black_box */;
input clk, we, d, a0,a1,a2,a3,a4, mr;
output r;
endmodule


module ramd32x1(clk, we , d ,a0w,a1w,a2w,a3w,a4w,a0r,a1r,a2r,a3r,a4r, r)/* synthesis black_box */; 
input  clk, we , d ,a0w,a1w,a2w,a3w,a4w,a0r,a1r,a2r,a3r,a4r;
output  r;
endmodule


module ramd32x1r(clk, we , d , a0w,a1w,a2w,a3w,a4w, a0r,a1r,a2r,a3r,a4r, mr, r)/* synthesis black_box */;
input  clk, we , d , a0w,a1w,a2w,a3w,a4w, a0r,a1r,a2r,a3r,a4r, mr;
output r;
endmodule


module ramd32x1_2c(clkr,clkw,we,gpd,d,a0w,a1w,a2w,a3w,a4w,a0r,a1r,a2r,a3r,a4r,r)/* synthesis black_box */; 
input 	clkr,clkw,we,gpd,d,a0w,a1w,a2w,a3w,a4w,a0r,a1r,a2r,a3r,a4r;
output	r;
endmodule


module ramd32x1r_2c(clkr,clkw,we,gpd,d,a0w,a1w,a2w,a3w,a4w,a0r,a1r,a2r,a3r,a4r,mr, r)/* synthesis black_box */;
input 	clkr,clkw,we,gpd,d,a0w,a1w,a2w,a3w,a4w,a0r,a1r,a2r,a3r,a4r,mr;
output  r;
endmodule


module rams32x1_1(clk,we,gpd,d,a0,a1,a2,a3,a4, r)/* synthesis black_box */;
input 	clk,we,gpd,d,a0,a1,a2,a3,a4;
output  r;
endmodule


module rams32x1r_1(clk,we,gpd,d,a0,a1,a2,a3,a4,mr, r)/* synthesis black_box */;
input 	clk,we,gpd,d,a0,a1,a2,a3,a4,mr;
output  r;
endmodule


