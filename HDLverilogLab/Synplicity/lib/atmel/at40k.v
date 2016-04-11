module zero(Q); // synthesis black_box
output Q;
endmodule
module xo4(Q, A, B, C, D); // synthesis black_box
output Q;
input A;
input B;
input C;
input D;
endmodule
module xo3(Q, A, B, C); // synthesis black_box
output Q;
input A;
input B;
input C;
endmodule
module xo2(Q, A, B); // synthesis black_box
output Q;
input A;
input B;
endmodule
module xn4(QN, A, B, C, D); // synthesis black_box
output QN;
input A;
input B;
input C;
input D;
endmodule
module xn3(QN, A, B, C); // synthesis black_box
output QN;
input A;
input B;
input C;
endmodule
module xn2(QN, A, B); // synthesis black_box
output QN;
input A;
input B;
endmodule
module rsbuf(Q, PAD); // synthesis black_box
output Q;
input PAD;
endmodule
module ramssync(A0, A1, A2, A3, A4, WEN, OEN, CLK, D0, D1, D2, D3); // synthesis black_box
input A0;
input A1;
input A2;
input A3;
input A4;
input WEN;
input OEN;
input CLK;
inout D0 /* synthesis syn_tristate = 1 */;
inout D1 /* synthesis syn_tristate = 1 */;
inout D2 /* synthesis syn_tristate = 1 */;
inout D3 /* synthesis syn_tristate = 1 */;
endmodule
module rams(A0, A1, A2, A3, A4, WEN, OEN, D0, D1, D2, D3); // synthesis black_box
input A0;
input A1;
input A2;
input A3;
input A4;
input WEN;
input OEN;
inout D0 /* synthesis syn_tristate = 1 */;
inout D1 /* synthesis syn_tristate = 1 */;
inout D2 /* synthesis syn_tristate = 1 */;
inout D3 /* synthesis syn_tristate = 1 */;
endmodule
module ramdsync(AIN0, AIN1, AIN2, AIN3, AIN4, AOUT0, AOUT1, AOUT2, AOUT3, AOUT4, WEN, OEN, CLK, DIN0, DIN1, DIN2, DIN3, DOUT0, DOUT1, DOUT2, DOUT3); // synthesis black_box
input AIN0;
input AIN1;
input AIN2;
input AIN3;
input AIN4;
input AOUT0;
input AOUT1;
input AOUT2;
input AOUT3;
input AOUT4;
input WEN;
input OEN;
input CLK;
input DIN0;
input DIN1;
input DIN2;
input DIN3;
output DOUT0 /* synthesis syn_tristate = 1 */;
output DOUT1 /* synthesis syn_tristate = 1 */;
output DOUT2 /* synthesis syn_tristate = 1 */;
output DOUT3 /* synthesis syn_tristate = 1 */;
endmodule
module ramd(AIN0, AIN1, AIN2, AIN3, AIN4, AOUT0, AOUT1, AOUT2, AOUT3, AOUT4, WEN, OEN, DIN0, DIN1, DIN2, DIN3, DOUT0, DOUT1, DOUT2, DOUT3); // synthesis black_box
input AIN0;
input AIN1;
input AIN2;
input AIN3;
input AIN4;
input AOUT0;
input AOUT1;
input AOUT2;
input AOUT3;
input AOUT4;
input WEN;
input OEN;
input DIN0;
input DIN1;
input DIN2;
input DIN3;
output DOUT0  /* synthesis syn_tristate = 1 */;
output DOUT1 /* synthesis syn_tristate = 1 */;
output DOUT2 /* synthesis syn_tristate = 1 */;
output DOUT3 /* synthesis syn_tristate = 1 */;
endmodule
module or4i4(Q, AN, BN, CN, DN); // synthesis black_box
output Q;
input AN;
input BN;
input CN;
input DN;
endmodule
module or4i3(Q, A, BN, CN, DN); // synthesis black_box
output Q;
input A;
input BN;
input CN;
input DN;
endmodule
module or4i2(Q, A, B, CN, DN); // synthesis black_box
output Q;
input A;
input B;
input CN;
input DN;
endmodule
module or4i1(Q, A, B, C, DN); // synthesis black_box
output Q;
input A;
input B;
input C;
input DN;
endmodule
module or4(Q, A, B, C, D); // synthesis black_box
output Q;
input A;
input B;
input C;
input D;
endmodule
module or3i3(Q, AN, BN, CN); // synthesis black_box
output Q;
input AN;
input BN;
input CN;
endmodule
module or3i2(Q, A, BN, CN); // synthesis black_box
output Q;
input A;
input BN;
input CN;
endmodule
module or3i1(Q, A, B, CN); // synthesis black_box
output Q;
input A;
input B;
input CN;
endmodule
module or3(Q, A, B, C); // synthesis black_box
output Q;
input A;
input B;
input C;
endmodule
module or2i2(Q, AN, BN); // synthesis black_box
output Q;
input AN;
input BN;
endmodule
module or2i1(Q, A, BN); // synthesis black_box
output Q;
input A;
input BN;
endmodule
module or2(Q, A, B); // synthesis black_box
output Q;
input A;
input B;
endmodule
module one(Q); // synthesis black_box
output Q;
endmodule
module obufos(PAD, A); // synthesis black_box
output PAD /* synthesis syn_tristate=1 */;
input A;
endmodule
module obufod(PAD, A); // synthesis black_box
output PAD /* synthesis syn_tristate=1 */;
input A;
endmodule
module obufe(PAD, A, OE); // synthesis black_box
output PAD /* synthesis syn_tristate=1 */;
input A;
input OE;
endmodule
module obuf(PAD, A); // synthesis black_box
output PAD;
input A;
endmodule
module nr4i4(QN, AN, BN, CN, DN); // synthesis black_box
output QN;
input AN;
input BN;
input CN;
input DN;
endmodule
module nr4i3(QN, A, BN, CN, DN); // synthesis black_box
output QN;
input A;
input BN;
input CN;
input DN;
endmodule
module nr4i2(QN, A, B, CN, DN); // synthesis black_box
output QN;
input A;
input B;
input CN;
input DN;
endmodule
module nr4i1(QN, A, B, C, DN); // synthesis black_box
output QN;
input A;
input B;
input C;
input DN;
endmodule
module nr4(QN, A, B, C, D); // synthesis black_box
output QN;
input A;
input B;
input C;
input D;
endmodule
module nr3i3(QN, AN, BN, CN); // synthesis black_box
output QN;
input AN;
input BN;
input CN;
endmodule
module nr3i2(QN, A, BN, CN); // synthesis black_box
output QN;
input A;
input BN;
input CN;
endmodule
module nr3i1(QN, A, B, CN); // synthesis black_box
output QN;
input A;
input B;
input CN;
endmodule
module nr3(QN, A, B, C); // synthesis black_box
output QN;
input A;
input B;
input C;
endmodule
module nr2i2(QN, AN, BN); // synthesis black_box
output QN;
input AN;
input BN;
endmodule
module nr2i1(QN, A, BN); // synthesis black_box
output QN;
input A;
input BN;
endmodule
module nr2(QN, A, B); // synthesis black_box
output QN;
input A;
input B;
endmodule
module nd4i4(QN, AN, BN, CN, DN); // synthesis black_box
output QN;
input AN;
input BN;
input CN;
input DN;
endmodule
module nd4i3(QN, A, BN, CN, DN); // synthesis black_box
output QN;
input A;
input BN;
input CN;
input DN;
endmodule
module nd4i2(QN, A, B, CN, DN); // synthesis black_box
output QN;
input A;
input B;
input CN;
input DN;
endmodule
module nd4i1(QN, A, B, C, DN); // synthesis black_box
output QN;
input A;
input B;
input C;
input DN;
endmodule
module nd4(QN, A, B, C, D); // synthesis black_box
output QN;
input A;
input B;
input C;
input D;
endmodule
module nd3i3(QN, AN, BN, CN); // synthesis black_box
output QN;
input AN;
input BN;
input CN;
endmodule
module nd3i2(QN, A, BN, CN); // synthesis black_box
output QN;
input A;
input BN;
input CN;
endmodule
module nd3i1(QN, A, B, CN); // synthesis black_box
output QN;
input A;
input B;
input CN;
endmodule
module nd3(QN, A, B, C); // synthesis black_box
output QN;
input A;
input B;
input C;
endmodule
module nd2i2(QN, AN, BN); // synthesis black_box
output QN;
input AN;
input BN;
endmodule
module nd2i1(QN, A, BN); // synthesis black_box
output QN;
input A;
input BN;
endmodule
module nd2(QN, A, B); // synthesis black_box
output QN;
input A;
input B;
endmodule
module mux3(Q, D0, D1, D2, S0, S1); // synthesis black_box
output Q;
input D0;
input D1;
input D2;
input S0;
input S1;
endmodule
module mux2(Q, D1, S, D0); // synthesis black_box
output Q;
input D1;
input S;
input D0;
endmodule
module muxfb(O, S0, S1, S, FB); // synthesis black_box
output O;
input S0;
input S1;
input S;
input FB;
endmodule
module mult(PPO, COUT, A, B, PPI, CI); // synthesis black_box
output PPO;
output COUT;
input A;
input B;
input PPI;
input CI;
endmodule
module lz(Q, OE); // synthesis black_box
output Q /* synthesis syn_tristate=1 */;
input OE;
endmodule
module ldsa(D, G, SN, Q); // synthesis black_box
input D;
input G;
input SN;
output Q;
endmodule
module ldra(D, G, RN, Q); // synthesis black_box
input D;
input G;
input RN;
output Q;
endmodule
module lde(D, G, E, Q); // synthesis black_box
input D;
input G;
input E;
output Q;
endmodule
module ld(D, G, Q); // synthesis black_box
input D;
input G;
output Q;
endmodule
module inv(QN, A); // synthesis black_box
output QN;
input A;
endmodule
module ibuf(Q, PAD); // synthesis black_box
output Q;
input PAD;
endmodule
module hz(Q, OE); // synthesis black_box
output Q /* synthesis syn_tristate=1 */;
input OE;
endmodule
module gclkbuf(Q, PAD); // synthesis black_box
output Q;
input PAD;
endmodule
module fjksa(Q, J, K, CLK, SN); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input SN;
endmodule
module fjkra(Q, J, K, CLK, RN); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input RN;
endmodule
module fjk(Q, J, K, CLK); // synthesis black_box
output Q;
input J;
input K;
input CLK;
endmodule
module fdsae(Q, D, E, CLK, SN); // synthesis black_box
output Q;
input D;
input E;
input CLK;
input SN;
endmodule
module fdsa(Q, D, CLK, SN); // synthesis black_box
output Q;
input D;
input CLK;
input SN;
endmodule
module fdrae(Q, D, E, CLK, RN); // synthesis black_box
output Q;
input D;
input E;
input CLK;
input RN;
endmodule
module fdra(Q, D, CLK, RN); // synthesis black_box
output Q;
input D;
input CLK;
input RN;
endmodule
module fde(Q, D, E, CLK); // synthesis black_box
output Q;
input D;
input E;
input CLK;
endmodule
module fd(Q, D, CLK); // synthesis black_box
output Q;
input D;
input CLK;
endmodule
module fclkbuf(Q, PAD); // synthesis black_box
output Q;
input PAD;
endmodule
module fa(SUM, COUT, A, B, CI); // synthesis black_box
output SUM;
output COUT;
input A;
input B;
input CI;
endmodule
module bufz(Q, A, OE); // synthesis black_box
output Q /* synthesis syn_tristate = 1 */;
input A;
input OE;
endmodule
module bibufos(Q, PAD, A); // synthesis black_box
output Q;
inout PAD /* synthesis syn_tristate=1 */;
input A;
endmodule
module bibufod(Q, PAD, A); // synthesis black_box
output Q;
inout PAD /* synthesis syn_tristate=1 */;
input A;
endmodule
module bibuf(Q, PAD, A, OE); // synthesis black_box
output Q;
inout PAD /* synthesis syn_tristate=1 */;
input A;
input OE;
endmodule
module an4i4(Q, AN, BN, CN, DN); // synthesis black_box
output Q;
input AN;
input BN;
input CN;
input DN;
endmodule
module an4i3(Q, A, BN, CN, DN); // synthesis black_box
output Q;
input A;
input BN;
input CN;
input DN;
endmodule
module an4i2(Q, A, B, CN, DN); // synthesis black_box
output Q;
input A;
input B;
input CN;
input DN;
endmodule
module an4i1(Q, A, B, C, DN); // synthesis black_box
output Q;
input A;
input B;
input C;
input DN;
endmodule
module an4(Q, A, B, C, D); // synthesis black_box
output Q;
input A;
input B;
input C;
input D;
endmodule
module an3i3(Q, AN, BN, CN); // synthesis black_box
output Q;
input AN;
input BN;
input CN;
endmodule
module an3i2(Q, A, BN, CN); // synthesis black_box
output Q;
input A;
input BN;
input CN;
endmodule
module an3i1(Q, A, B, CN); // synthesis black_box
output Q;
input A;
input B;
input CN;
endmodule
module an3(Q, A, B, C); // synthesis black_box
output Q;
input A;
input B;
input C;
endmodule
module an2i2(Q, AN, BN); // synthesis black_box
output Q;
input AN;
input BN;
endmodule
module an2i1(Q, A, BN); // synthesis black_box
output Q;
input A;
input BN;
endmodule
module an2(Q, A, B); // synthesis black_box
output Q;
input A;
input B;
endmodule
