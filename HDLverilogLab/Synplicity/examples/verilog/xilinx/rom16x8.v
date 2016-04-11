// This example shows how to create a
// 16x8 ROM using xilinx ROM16x1 component.

module ROM16X1 (o, a3,a2,a1,a0) /* synthesis black_box */;
input a3,a2,a1,a0;
output o;
endmodule

module rom_16x8 (o,a);
input [3:0] a;
output [7:0] o;
ROM16X1 u0 (o[0],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=FFFF" */;
ROM16X1 u1 (o[1],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=ABCD" */;
ROM16X1 u2 (o[2],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=BCDE" */;
ROM16X1 u3 (o[3],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=CDEF" */;
ROM16X1 u4 (o[4],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=CCDD" */;
ROM16X1 u5 (o[5],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=0000" */;
ROM16X1 u6 (o[6],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=0010" */;
ROM16X1 u7 (o[7],a[3],a[2],a[1],a[0]) /* synthesis xc_props="INIT=1100" */;
endmodule
