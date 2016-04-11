// $Header: s:/rcs/mappers/actel/lib/RCS/tmr.v 1.4 1999/01/06 00:48:25 nata Exp $
// 
// This file maps behavioral FF to TMR implementations for
// Rad-hard applications.
//
// Include this file as the first file in your file list. 
//
// Specify an implementation for simple dffs.
// Normally these implementations should be a separate file.
module tmr_dff(q, d, c); 
// implement causes this module to be compliled and passed to the
// mapper.  The value (dff in this case) will tell the mapper
// to replace generic dff's with this module.
// tmr is a tag value that can be used to select the rad hard
// style you want on a register or module basis with the
// syn_radhardlevel string attribute.

// synthesis syn_implement="dff:tmr"

// syn_preserve tells Synplify to preserve redundant sequential
// logic.  We need this to prevent Synplify from optimizing away
// the Triple Modular redundancy.

// synthesis syn_preserve=1 
output q;
input d, c;
reg q1, q2, q3;

always @(posedge c) begin
	q1 = d;
	q2 = d;
	q3 = d;
end
assign q = (q1 & q2) | (q1 & q3) | (q2 & q3); // vote
endmodule

module tmr_dffr(q, d, c, r); 
// synthesis syn_implement="dffr:tmr"
// synthesis syn_preserve=1 
output q;
input d, c, r;
reg q1, q2, q3;

always @(posedge c or posedge r) begin
	if(r) begin
		q1 = 1'b0;
		q2 = 1'b0;
		q3 = 1'b0;
	end else begin
		q1 = d;
		q2 = d;
		q3 = d;
	end
end
assign q = (q1 & q2) | (q1 & q3) | (q2 & q3); // vote
endmodule

module tmr_dffs(q, d, c, s); 
// synthesis syn_implement="dffs:tmr"
// synthesis syn_preserve=1 
output q;
input d, c, s;
reg q1, q2, q3;

always @(posedge c or posedge s) begin
	if(s) begin
		q1 = 1'b1;
		q2 = 1'b1;
		q3 = 1'b1;
	end else begin
		q1 = d;
		q2 = d;
		q3 = d;
	end
end
assign q = (q1 & q2) | (q1 & q3) | (q2 & q3); // vote
endmodule

module tmr_dffrs(q, d, c, r, s); 
// synthesis syn_implement="dffrs:tmr"
// synthesis syn_preserve=1 
output q;
input d, c, r, s;
reg q1, q2, q3;

always @(posedge c or posedge r or posedge s) begin
	if(r) begin
		q1 = 1'b0;
		q2 = 1'b0;
		q3 = 1'b0;
	end else if(s) begin
		q1 = 1'b1;
		q2 = 1'b1;
		q3 = 1'b1;
	end else begin
		q1 = d;
		q2 = d;
		q3 = d;
	end
end
assign q = (q1 & q2) | (q1 & q3) | (q2 & q3); // vote
endmodule


// Latches

module tmr_lat( q,d, c);
// synthesis syn_implement="lat:tmr"
// synthesis syn_preserve=1 
output q;
input d;
input c;
wire q1,q2,q3;

DL1 I1(.Q(q1),.D(d),.G(c));
DL1 I2(.Q(q2),.D(d),.G(c));
DL1 I3(.Q(q3),.D(d),.G(c));
assign q = (q1 & q2) | (q1 & q3) | (q2 & q3); // vote

endmodule

module tmr_latr( q,d,c,r);
// synthesis syn_implement="latr:tmr"
// synthesis syn_preserve=1 
output q;
input d;
input c,r;
wire q1,q2,q3;

DLC1 I1(.Q(q1),.D(d),.G(c),.CLR(r));
DLC1 I2(.Q(q2),.D(d),.G(c),.CLR(r));
DLC1 I3(.Q(q3),.D(d),.G(c),.CLR(r));
assign q = (q1 & q2) | (q1 & q3) | (q2 & q3); // vote
endmodule


module tmr_lats(q,d,c,s);
// synthesis syn_implement="lats:tmr"
// synthesis syn_preserve=1 
output q;
input d;
input c,s;
wire q1,q2,q3;
DLP1 I1(.Q(q1),.D(d),.G(c),.PRE(s));
DLP1 I2(.Q(q2),.D(d),.G(c),.PRE(s));
DLP1 I3(.Q(q3),.D(d),.G(c),.PRE(s));
assign q = (q1 & q2) | (q1 & q3) | (q2 & q3); // vote
endmodule


module tmr_latrs( q,d,c,r,s);
// synthesis syn_implement="latrs:tmr"
// synthesis syn_preserve=1 
output q;
input d;
input c,r,s;
wire q1,q2,q3;
wire r_i = ~r;
DL2A I1(.Q(q1),.D(d),.G(c),.CLR(r_i),.PRE(s));
DL2A I2(.Q(q2),.D(d),.G(c),.CLR(r_i),.PRE(s));
DL2A I3(.Q(q3),.D(d),.G(c),.CLR(r_i),.PRE(s));
assign q = (q1 & q2) | (q1 & q3) | (q2 & q3); // vote
endmodule

module DL1 (D, G, Q) /* synthesis black_box */;
    input  D, G;
    output Q;
endmodule

module DLP1 (D, G, PRE, Q) /* synthesis black_box */;
    input  D, G, PRE;
    output Q;
endmodule

module DL2A(D, G, PRE, CLR, Q) /* synthesis black_box */;
    input    D, CLR, PRE, G;
    output   Q;
endmodule

module DLC1 (D, G, CLR, Q) /* synthesis black_box */;
    input  D, G, CLR;
    output Q;
endmodule