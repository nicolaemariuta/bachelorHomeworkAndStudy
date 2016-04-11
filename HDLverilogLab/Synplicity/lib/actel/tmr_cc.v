// $Header: s:/rcs/mappers/actel/lib/RCS/tmr_cc.v 1.8 1999/01/06 00:45:35 nata Exp $
module tmr_dfp1_dff(q,d,c)/* synthesis syn_preserve=1 syn_implement="dff:tmr_cc" */;

output q;
input d,c;

DFP1  u1 (.D(d),.CLK(c),.PRE(1'b0),.Q(q1));
DFP1  u2 (.D(d),.CLK(c),.PRE(1'b0),.Q(q2));
DFP1  u3 (.D(d),.CLK(c),.PRE(1'b0),.Q(q3));

assign q = (q1 & q2) | (q2 & q3) | (q1 & q3);

endmodule

module tmr_dfpc_dffr(q,d,c,r)/* synthesis syn_preserve=1 syn_implement="dffr:tmr_cc" */;

output q;
input d,c,r;

DFPC  u1 (.D(d), .CLK(c), .CLR(~r), .PRE(1'b0), .Q(q1));
DFPC  u2 (.D(d), .CLK(c), .CLR(~r), .PRE(1'b0), .Q(q2));
DFPC  u3 (.D(d), .CLK(c), .CLR(~r), .PRE(1'b0), .Q(q3));

assign q = (q1 & q2) | (q2 & q3) | (q1 & q3);

endmodule


module tmr_dfp1_dffs(q,d,c,s)/* synthesis syn_preserve=1 syn_implement="dffs:tmr_cc" */;

output q;
input d,c,s;

DFP1  u1 (.D(d), .CLK(c), .PRE(s), .Q(q1));
DFP1  u2 (.D(d), .CLK(c), .PRE(s), .Q(q2));
DFP1  u3 (.D(d), .CLK(c), .PRE(s), .Q(q3));

assign q = (q1 & q2) | (q2 & q3) | (q1 & q3);

endmodule



module tmr_dfpc_dffrs(q,d,c,s,r)/* synthesis syn_preserve=1 syn_implement="dffrs:tmr_cc" */;

output q;
input d,c,s,r;

DFPC  u1 (.D(d), .CLK(c), .PRE(s), .CLR(~r), .Q(q1));
DFPC  u2 (.D(d), .CLK(c), .PRE(s), .CLR(~r), .Q(q2));
DFPC  u3 (.D(d), .CLK(c), .PRE(s), .CLR(~r), .Q(q3));

assign q = (q1 & q2) | (q2 & q3) | (q1 & q3);

endmodule


// LATCHES

module tmr_dlc1_lat(q,d,c)/* synthesis syn_implement="lat:tmr_cc" */;
output q;
input d,c;
wire q1,q2,q3;

DLP1  u1 (.D(d),.G(c),.PRE(1'b0),.Q(q1));	
DLP1  u2 (.D(d),.G(c),.PRE(1'b0),.Q(q2));	
DLP1  u3 (.D(d),.G(c),.PRE(1'b0),.Q(q3));	
assign q = (q1 & q2) | (q2 & q3) | (q1 & q3);

endmodule


module tmr_dlc1_latr(q,d,c,r)/* synthesis syn_implement="latr:tmr_cc" */;
output q;
input d,c,r;
wire q1,q2,q3;

DLC1  u1 (.D(d),.G(c),.CLR(r),.Q(q1));	
DLC1  u2 (.D(d),.G(c),.CLR(r),.Q(q2));	
DLC1  u3 (.D(d),.G(c),.CLR(r),.Q(q3));	
assign q = (q1 & q2) | (q2 & q3) | (q1 & q3);

endmodule


module tmr_dlp1_lats(q,d,c,s)/* synthesis syn_implement="lats:tmr_cc" */;
output q;
input d,c,s;
wire q1,q2,q3;

DLP1  u1 (.D(d),.G(c),.PRE(s),.Q(q1));	
DLP1  u2 (.D(d),.G(c),.PRE(s),.Q(q2));
DLP1  u3 (.D(d),.G(c),.PRE(s),.Q(q3));
assign q = (q1 & q2) | (q2 & q3) | (q1 & q3);

endmodule



module tmr_dl2a_latrs(q,d,c,s,r)/* synthesis syn_preserve=1 syn_implement="latrs:tmr_cc" */;
output q;
input d,c,s,r;
wire q1,q2,q3;
wire r_i = ~r;
DL2A  u1 (.D(d),.G(c),.PRE(s),.CLR(r_i),.Q(q1));
DL2A  u2 (.D(d),.G(c),.PRE(s),.CLR(r_i),.Q(q2));
DL2A  u3 (.D(d),.G(c),.PRE(s),.CLR(r_i),.Q(q3));
assign q = (q1 & q2) | (q2 & q3) | (q1 & q3);

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
