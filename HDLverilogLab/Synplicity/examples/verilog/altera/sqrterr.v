`timescale 100ps/100ps

// Example that shows how to map logic into
// EABs for altera Flex10k devices. 
//

// Compute an integer square root of an input
// bus of width 2n with a result bus size of n
// This is a complicated function that we will map in to
// a  256x4 block of RAM .
//
module sqrtb(z, a);
parameter asize = 8;
output [(asize/2)-1:0] z;
input [asize-1:0] a;
reg [(asize/2)-1:0] z;

always @(a) begin :lbl
	integer i;
	// r is remainder, tt is delta for adding one bit
	// v is current sqrt value
	reg [asize-1:0] v, r, tt;

	v = 0;
	r = a;
	for(i = asize/2 - 1; i >= 0; i = i - 1) begin
		tt = (v << (i + 1)) | (1 << (i + i));
		if(tt <= r) begin
			v = v | (1 << i);
			r = r - tt;
		end
	end
	z = v;
end

endmodule

//
// Compute the error in an integer sqrt as the difference
// between the original input and the square of the square
// root.
//
module sqrterr(e, a);
output [7:0] e;
input [7:0] a;

wire [3:0] sqa;

sqrtb sq (.z(sqa), .a(a))  /* synthesis altera_implement_in_eab=1 */;
defparam sq.asize = 8;

wire [7:0] zz = sqa * sqa;

assign e = a - zz;

endmodule
