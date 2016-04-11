//
// Demonstrate direction construction of luts with
// Programming for Virtex
//
// Make sure to include virtex.v from the
// <synplify dir>/lib/xilinx dir
// as part of the project
//

module top(w1, w2, w3, w4, z1, z2, z3, z4, a);
output w1, w2, w3, w4;
output z1, z2, z3, z4;
input [3:0] a;

LUT1 #2'b01 L1 ( .O(z1), .I0(a[0]) );
LUT2 #4'b0110 L2 ( .O(z2), .I0(a[0]), .I1(a[1]) );
LUT3 #8'b11110110 L3 ( .O(z3), .I0(a[0]), .I1(a[1]), .I2(a[2]) );
LUT4 #16'h8421 L4 ( .O(z4), .I0(a[0]), .I1(a[1]), .I2(a[2]), .I3(a[3]) );

LUT1 #2'b10 M1 ( .O(w1), .I0(a[0]) );
LUT2 #4'b1001 M2 ( .O(w2), .I0(a[0]), .I1(a[1]) );
LUT3 #8'b11010110 M3 ( .O(w3), .I0(a[0]), .I1(a[1]), .I2(a[2]) );
LUT4 #16'h9421 M4 ( .O(w4), .I0(a[0]), .I1(a[1]), .I2(a[2]), .I3(a[3]) );

endmodule
