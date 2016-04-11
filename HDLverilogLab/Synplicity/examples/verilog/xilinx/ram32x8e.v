/* This example shows how to create a
32x8 (32 words 8 bits per word) RAM
using the xilinx RAM32X1 instance.
The example makes use of INIT values
which are only available in xilinx
E series.
*/
module RAM32X1 (O, D,WE,A4,A3,A2,A1,A0) /* synthesis black_box */;
output O;
input D, WE, A4, A3, A2, A1, A0;
endmodule

module ram_32x8 (o,we,d,a);
output [7:0] o;
input we;
input [7:0] d;
input [4:0] a;

	RAM32X1 U0 (o[0],d[0],we,a[4],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=FFFFFFFF" */;
	RAM32X1 U1 (o[1],d[1],we,a[4],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=AABB0010" */;
	RAM32X1 U2 (o[2],d[2],we,a[4],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=CCDD0100" */;
	RAM32X1 U3 (o[3],d[3],we,a[4],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=10101010" */; 
	RAM32X1 U4 (o[4],d[4],we,a[4],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=10001000" */;
	RAM32X1 U6 (o[5],d[5],we,a[4],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=DDDDCCCC" */;
	RAM32X1 U7 (o[6],d[6],we,a[4],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=BFBFBFBF" */;
	RAM32X1 U8 (o[7],d[7],we,a[4],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=FEFEDDDD" */;
endmodule
