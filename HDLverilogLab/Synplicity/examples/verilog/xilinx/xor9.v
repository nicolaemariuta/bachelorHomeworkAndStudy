//
// Example to demonstrate direct construction
// of an RPM in the XC4000 family
//
// The xc_map attribute is placed on a module or a vhdl
// architecture.  The contents must be simple logic
// equations with a single output.  xcmap can have the 
// value hmap or fmap.  In the 5200 series parts, the fmap 
// can have up to 5 inputs.
//
// Instance attributes can be used to create usets and
// assign relative locations.  The full instance path will
// be used to qualify uset names to prevent collisions.
//
module fmap_xor4(z, a, b, c, d); /* synthesis xc_map=fmap */
output z;
input a, b, c, d;
assign z = a ^ b ^ c ^ d;
endmodule

module hmap_xor3(z, a, b, c); /* synthesis xc_map=hmap */
output z;
input a, b, c;
assign z = a ^ b ^ c;
endmodule

module clb_xor9(z, a);
output z;
input [8:0] a;
wire z03, z47;
fmap_xor4 x03 /* synthesis xc_uset="SET1" xc_rloc="R0C0.f" */ 
	(z03, a[0], a[1], a[2], a[3]);
fmap_xor4 x47 /* synthesis xc_uset="SET1" xc_rloc="R0C0.g" */ 
	(z47, a[4], a[5], a[6], a[7]);
hmap_xor3 zz  /* synthesis xc_uset="SET1" xc_rloc="R0C0.h" */
	(z, z03, z47, a[8]);
endmodule

module xor9top(z, a);
output z;
input [8:0] a;

clb_xor9 x(z, a);

endmodule
