// Combinational cell implementations of sequential primitives
// $Header: s:/rcs/mappers/actel/lib/RCS/cc.v 1.8 1999/01/06 00:37:57 nata Exp $

module radhard_dff(q,d,c)/* synthesis syn_implement="dff:cc" */;
output q;
input d,c;

DFP1  u1 (.D(d), .CLK(c), .PRE(1'b0), .Q(q));	

endmodule


module radhard_dffr(q,d,c,r)/* synthesis syn_implement="dffr:cc" */;
output q;
input d,c,r;

wire ri = ~r;
DFPC  u1 (.D(d), .CLK(c), .CLR(ri), .PRE(1'b0), .Q(q));	

endmodule


module radhard_dffs(q,d,c,s)/* synthesis syn_implement="dffs:cc" */;
output q;
input d,c,s;

DFP1  u1 (.D(d), .CLK(c), .PRE(s), .Q(q));	

endmodule



module radhard_dffrs(q,d,c,s,r)/* synthesis syn_preserve=1 syn_implement="dffrs:cc" */;
output q;
input d,c,s,r;

wire ri = ~r;
DFPC  u1 (.D(d), .CLK(c), .PRE(s), .CLR(ri), .Q(q));

endmodule


// LATCHES

module radhard_lat(q,d,c)/* synthesis syn_implement="lat:cc" */;
output q;
input d,c;

DLP1  u1 (.D(d),.G(c),.PRE(1'b0),.Q(q));	

endmodule


module radhard_latr(q,d,c,r)/* synthesis syn_implement="latr:cc" */;
output q;
input d,c,r;

DLC1  u1 (.D(d),.G(c),.CLR(r),.Q(q));	

endmodule


module radhard_lats(q,d,c,s)/* synthesis syn_implement="lats:cc" */;
output q;
input d,c,s;

DLP1  u1 (.D(d),.G(c),.PRE(s),.Q(q));	

endmodule



module radhard_latrs(q,d,c,s,r)/* synthesis syn_preserve=1 syn_implement="latrs:cc" */;
output q;
input d,c,s,r;

wire ri = ~r;
DL2A  u1 (.D(d),.G(c),.PRE(s),.CLR(ri),.Q(q));

endmodule

module DFP1(D, CLK, PRE, Q) /* synthesis black_box */;
    input    D, CLK, PRE;
    output   Q;
endmodule

module DFPC(D, CLK, PRE, CLR, Q) /* synthesis black_box */;
    input    D, CLR, PRE, CLK;
    output   Q;
endmodule

module DLC1 (D, G, CLR, Q) /* synthesis black_box */;
    input  D, G, CLR;
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

