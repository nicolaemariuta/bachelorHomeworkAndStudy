module XORSOFT(O, I0, I1); // synthesis black_box
output O;
input I0;
input I1;
endmodule
module XOR6(O, I0, I1, I2, I3, I4, I5); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
endmodule
module XOR5(O, I0, I1, I2, I3, I4); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
endmodule
module XOR4(O, I0, I1, I2, I3); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
endmodule
module XOR3(O, I0, I1, I2); // synthesis black_box
output O;
input I0;
input I1;
input I2;
endmodule
module XOR2(O, I0, I1); // synthesis black_box
output O;
input I0;
input I1;
endmodule
module XNOR6(O, I0, I1, I2, I3, I4, I5); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
endmodule
module XNOR5(O, I0, I1, I2, I3, I4); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
endmodule
module XNOR4(O, I0, I1, I2, I3); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
endmodule
module XNOR3(O, I0, I1, I2); // synthesis black_box
output O;
input I0;
input I1;
input I2;
endmodule
module XNOR2(O, I0, I1); // synthesis black_box
output O;
input I0;
input I1;
endmodule
module VCC(X); // synthesis black_box
output X;
endmodule
module UBPRS(Q, D, CLK, S); // synthesis black_box
output Q;
input D;
input CLK;
input S;
endmodule
module UBPRR(Q, D, CLK, R); // synthesis black_box
output Q;
input D;
input CLK;
input R;
endmodule
module UBPR2S(Q0, Q1, D, CLK, S); // synthesis black_box
output Q0;
output Q1;
input D;
input CLK;
input S;
endmodule
module UBPR2R(Q0, Q1, D, CLK, R); // synthesis black_box
output Q0;
output Q1;
input D;
input CLK;
input R;
endmodule
module UBPR2(Q0, Q1, D, CLK); // synthesis black_box
output Q0;
output Q1;
input D;
input CLK;
endmodule
module UBPR(Q, D, CLK); // synthesis black_box
output Q;
input D;
input CLK;
endmodule
module UBPLS(Q, D, LAT, S); // synthesis black_box
output Q;
input D;
input LAT;
input S;
endmodule
module UBPLR(Q, D, LAT, R); // synthesis black_box
output Q;
input D;
input LAT;
input R;
endmodule
module UBPL2S(Q0, Q1, D, LAT, S); // synthesis black_box
output Q0;
output Q1;
input D;
input LAT;
input S;
endmodule
module UBPL2R(Q0, Q1, D, LAT, R); // synthesis black_box
output Q0;
output Q1;
input D;
input LAT;
input R;
endmodule
module UBPL2(Q0, Q1, D, LAT); // synthesis black_box
output Q0;
output Q1;
input D;
input LAT;
endmodule
module UBPL(Q, D, LAT); // synthesis black_box
output Q;
input D;
input LAT;
endmodule
module TFFSH(Q, T, CLK, S); // synthesis black_box
output Q;
input T;
input CLK;
input S;
endmodule
module TFFS(Q, T, CLK, S); // synthesis black_box
output Q;
input T;
input CLK;
input S;
endmodule
module TFFRSSH(Q, T, CLK, R, S); // synthesis black_box
output Q;
input T;
input CLK;
input R;
input S;
endmodule
module TFFRSS(Q, T, CLK, R, S); // synthesis black_box
output Q;
input T;
input CLK;
input R;
input S;
endmodule
module TFFRSH(Q, T, CLK, R, S); // synthesis black_box
output Q;
input T;
input CLK;
input R;
input S;
endmodule
module TFFRS(Q, T, CLK, R, S); // synthesis black_box
output Q;
input T;
input CLK;
input R;
input S;
endmodule
module TFFRH(Q, T, CLK, R); // synthesis black_box
output Q;
input T;
input CLK;
input R;
endmodule
module TFFR(Q, T, CLK, R); // synthesis black_box
output Q;
input T;
input CLK;
input R;
endmodule
module TFF(Q, T, CLK); // synthesis black_box
output Q;
input T;
input CLK;
endmodule
module RSFFSH(Q, SE, RE, CLK, S); // synthesis black_box
output Q;
input SE;
input RE;
input CLK;
input S;
endmodule
module RSFFS(Q, SE, RE, CLK, S); // synthesis black_box
output Q;
input SE;
input RE;
input CLK;
input S;
endmodule
module RSFFRSSH(Q, SE, RE, CLK, R, S); // synthesis black_box
output Q;
input SE;
input RE;
input CLK;
input R;
input S;
endmodule
module RSFFRSS(Q, SE, RE, CLK, R, S); // synthesis black_box
output Q;
input SE;
input RE;
input CLK;
input R;
input S;
endmodule
module RSFFRSH(Q, SE, RE, CLK, R, S); // synthesis black_box
output Q;
input SE;
input RE;
input CLK;
input R;
input S;
endmodule
module RSFFRS(Q, SE, RE, CLK, R, S); // synthesis black_box
output Q;
input SE;
input RE;
input CLK;
input R;
input S;
endmodule
module RSFFRH(Q, SE, RE, CLK, R); // synthesis black_box
output Q;
input SE;
input RE;
input CLK;
input R;
endmodule
module RSFFR(Q, SE, RE, CLK, R); // synthesis black_box
output Q;
input SE;
input RE;
input CLK;
input R;
endmodule
module RSFF(Q, SE, RE, CLK); // synthesis black_box
output Q;
input SE;
input RE;
input CLK;
endmodule
module ROTS(O, D, CLK, OE, S); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input D;
input CLK;
input OE;
input S;
endmodule
module ROTR(O, D, CLK, OE, R); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input D;
input CLK;
input OE;
input R;
endmodule
module ROT(O, D, CLK, OE); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input D;
input CLK;
input OE;
endmodule
module RORIS(O, Q, IO, D, CLKO, CLKI, OE, S); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
output Q;
inout IO;
input D;
input CLKO;
input CLKI;
input OE;
input S;
endmodule
module RORIR(O, Q, IO, D, CLKI, CLKO, OE, R); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
output Q;
inout IO;
input D;
input CLKI;
input CLKO;
input OE;
input R;
endmodule
module RORI(O, Q, IO, D, CLKI, CLKO, OE); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
output Q;
inout IO;
input D;
input CLKI;
input CLKO;
input OE;
endmodule
module ROLIS(O, Q, IO, D, CLK, LAT, OE, S); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
output Q;
inout IO;
input D;
input CLK;
input LAT;
input OE;
input S;
endmodule
module ROLIR(O, Q, IO, D, CLK, LAT, OE, R); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
output Q;
inout IO;
input D;
input CLK;
input LAT;
input OE;
input R;
endmodule
module ROLI(O, Q, IO, D, CLK, LAT, OE); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
output Q;
inout IO;
input D;
input CLK;
input LAT;
input OE;
endmodule
module RIS(Q, D, CLK, S); // synthesis black_box
output Q;
input D;
input CLK;
input S;
endmodule
module RIR(Q, D, CLK, R); // synthesis black_box
output Q;
input D;
input CLK;
input R;
endmodule
module RI(Q, D, CLK); // synthesis black_box
output Q;
input D;
input CLK;
endmodule
module RBC(); // synthesis black_box
endmodule
module PUC(); // synthesis black_box
endmodule
module OR8(O, I0, I1, I2, I3, I4, I5, I6, I7); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
endmodule
module OR7(O, I0, I1, I2, I3, I4, I5, I6); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
endmodule
module OR6(O, I0, I1, I2, I3, I4, I5); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
endmodule
module OR5(O, I0, I1, I2, I3, I4); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
endmodule
module OR4(O, I0, I1, I2, I3); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
endmodule
module OR3(O, I0, I1, I2); // synthesis black_box
output O;
input I0;
input I1;
input I2;
endmodule
module OR2(O, I0, I1); // synthesis black_box
output O;
input I0;
input I1;
endmodule
module OPAD(OPAD); // synthesis black_box
output OPAD;
endmodule
module OBUF(O, I0); // synthesis black_box
output O;
input I0;
endmodule
module OA321(O, I0, I1, I2, I3, I4, I5); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
endmodule
module OA221(O, I0, I1, I2, I3, I4); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
endmodule
module OA21(O, I0, I1, I2); // synthesis black_box
output O;
input I0;
input I1;
input I2;
endmodule
module NOR8(O, I0, I1, I2, I3, I4, I5, I6, I7); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
endmodule
module NOR7(O, I0, I1, I2, I3, I4, I5, I6); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
endmodule
module NOR6(O, I0, I1, I2, I3, I4, I5); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
endmodule
module NOR5(O, I0, I1, I2, I3, I4); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
endmodule
module NOR4(O, I0, I1, I2, I3); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
endmodule
module NOR3(O, I0, I1, I2); // synthesis black_box
output O;
input I0;
input I1;
input I2;
endmodule
module NOR2(O, I0, I1); // synthesis black_box
output O;
input I0;
input I1;
endmodule
module NEQ22(O, A0, A1, B0, B1); // synthesis black_box
output O;
input A0;
input A1;
input B0;
input B1;
endmodule
module NAN8(O, I0, I1, I2, I3, I4, I5, I6, I7); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
endmodule
module NAN7(O, I0, I1, I2, I3, I4, I5, I6); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
endmodule
module NAN6(O, I0, I1, I2, I3, I4, I5); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
endmodule
module NAN5(O, I0, I1, I2, I3, I4); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
endmodule
module NAN4(O, I0, I1, I2, I3); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
endmodule
module NAN3(O, I0, I1, I2); // synthesis black_box
output O;
input I0;
input I1;
input I2;
endmodule
module NAN2(O, I0, I1); // synthesis black_box
output O;
input I0;
input I1;
endmodule
module MUX4(O, I0, I1, I2, I3, S0, S1); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input S0;
input S1;
endmodule
module MUX2(O, I0, I1, S0); // synthesis black_box
output O;
input I0;
input I1;
input S0;
endmodule
module MAJOR3(O, I0, I1, I2); // synthesis black_box
output O;
input I0;
input I1;
input I2;
endmodule
module LIS(Q, D, LAT, S); // synthesis black_box
output Q;
input D;
input LAT;
input S;
endmodule
module LIR(Q, D, LAT, R); // synthesis black_box
output Q;
input D;
input LAT;
input R;
endmodule
module LI(Q, D, LAT); // synthesis black_box
output Q;
input D;
input LAT;
endmodule
module JTAG(TDO, TDI, TCLK, TMOD); // synthesis black_box
output TDO;
input TDI;
input TCLK;
input TMOD;
endmodule
module JKFFSH(Q, J, K, CLK, S); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input S;
endmodule
module JKFFS(Q, J, K, CLK, S); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input S;
endmodule
module JKFFRSSH(Q, J, K, CLK, S, R); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input S;
input R;
endmodule
module JKFFRSS(Q, J, K, CLK, S, R); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input S;
input R;
endmodule
module JKFFRSH(Q, J, K, CLK, S, R); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input S;
input R;
endmodule
module JKFFRS(Q, J, K, CLK, S, R); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input S;
input R;
endmodule
module JKFFRH(Q, J, K, CLK, R); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input R;
endmodule
module JKFFR(Q, J, K, CLK, R); // synthesis black_box
output Q;
input J;
input K;
input CLK;
input R;
endmodule
module JKFF(Q, J, K, CLK); // synthesis black_box
output Q;
input J;
input K;
input CLK;
endmodule
module IPAD(IPAD); // synthesis black_box
input IPAD;
endmodule
module INVTL(O, I0, OE); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I0;
input OE;
endmodule
module INVTH(O, I0, OE); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I0;
input OE;
endmodule
module INV(O, I0); // synthesis black_box
output O;
input I0;
endmodule
module IBUF(O, I0); // synthesis black_box
output O;
input I0;
endmodule
module GSRBUF(O, SRI); // synthesis black_box
output O;
input SRI;
endmodule
module GND(X); // synthesis black_box
output X;
endmodule
module EQ22(O, A0, A1, B0, B1); // synthesis black_box
output O;
input A0;
input A1;
input B0;
input B1;
endmodule
module ENOR(O, I0, I1); // synthesis black_box
output O;
input I0;
input I1;
endmodule
module DLATSH(Q, D, LAT, S); // synthesis black_box
output Q;
input D;
input LAT;
input S;
endmodule
module DLATS(Q, D, LAT, S); // synthesis black_box
output Q;
input D;
input LAT;
input S;
endmodule
module DLATRSH(Q, D, LAT, R, S); // synthesis black_box
output Q;
input D;
input LAT;
input R;
input S;
endmodule
module DLATRS(Q, D, LAT, R, S); // synthesis black_box
output Q;
input D;
input LAT;
input R;
input S;
endmodule
module DLATRH(Q, D, LAT, R); // synthesis black_box
output Q;
input D;
input LAT;
input R;
endmodule
module DLATR(Q, D, LAT, R); // synthesis black_box
output Q;
input D;
input LAT;
input R;
endmodule
module DLAT(Q, D, LAT); // synthesis black_box
output Q;
input D;
input LAT;
endmodule
module DFFSH(Q, D, CLK, S); // synthesis black_box
output Q;
input D;
input CLK;
input S;
endmodule
module DFFS(Q, D, CLK, S); // synthesis black_box
output Q;
input D;
input CLK;
input S;
endmodule
module DFFRSSH(Q, D, CLK, R, S); // synthesis black_box
output Q;
input D;
input CLK;
input R;
input S;
endmodule
module DFFRSS(Q, D, CLK, R, S); // synthesis black_box
output Q;
input D;
input CLK;
input R;
input S;
endmodule
module DFFRSH(Q, D, CLK, R, S); // synthesis black_box
output Q;
input D;
input CLK;
input R;
input S;
endmodule
module DFFRS(Q, D, CLK, R, S); // synthesis black_box
output Q;
input D;
input CLK;
input R;
input S;
endmodule
module DFFRH(Q, D, CLK, R); // synthesis black_box
output Q;
input D;
input CLK;
input R;
endmodule
module DFFR(Q, D, CLK, R); // synthesis black_box
output Q;
input D;
input CLK;
input R;
endmodule
module DFFCSH(Q, D, CLK, CE, S); // synthesis black_box
output Q;
input D;
input CLK;
input CE;
input S;
endmodule
module DFFCS(Q, D, CLK, CE, S); // synthesis black_box
output Q;
input D;
input CLK;
input CE;
input S;
endmodule
module DFFCRSSH(Q, D, CLK, CE, R, S); // synthesis black_box
output Q;
input D;
input CLK;
input CE;
input R;
input S;
endmodule
module DFFCRSS(Q, D, CLK, CE, R, S); // synthesis black_box
output Q;
input D;
input CLK;
input CE;
input R;
input S;
endmodule
module DFFCRSH(Q, D, CLK, CE, R, S); // synthesis black_box
output Q;
input D;
input CLK;
input CE;
input R;
input S;
endmodule
module DFFCRS(Q, D, CLK, CE, R, S); // synthesis black_box
output Q;
input D;
input CLK;
input CE;
input R;
input S;
endmodule
module DFFCRH(Q, D, CLK, CE, R); // synthesis black_box
output Q;
input D;
input CLK;
input CE;
input R;
endmodule
module DFFCR(Q, D, CLK, CE, R); // synthesis black_box
output Q;
input D;
input CLK;
input CE;
input R;
endmodule
module DFFC(Q, D, CLK, CE); // synthesis black_box
output Q;
input D;
input CLK;
input CE;
endmodule
module DFF(Q, D, CLK); // synthesis black_box
output Q;
input D;
input CLK;
endmodule
module DEMUX4(O0, O1, O2, O3, EN, S0, S1); // synthesis black_box
output O0;
output O1;
output O2;
output O3;
input EN;
input S0;
input S1;
endmodule
module DEMUX2(O0, O1, EN, S0); // synthesis black_box
output O0;
output O1;
input EN;
input S0;
endmodule
module COM_UDCP(Q, COUT, A, D, LOAD, UD, CNTEN, CIN); // synthesis black_box
output Q;
output COUT;
input A;
input D;
input LOAD;
input UD;
input CNTEN;
input CIN;
endmodule
module CLKI(O, PAD); // synthesis black_box
output O;
input PAD;
endmodule
module CCU_UDC(Q, COUT, UD, CLK, R, S, CIN); // synthesis black_box
output Q;
output COUT;
input UD;
input CLK;
input R;
input S;
input CIN;
endmodule
module CCU_UCP(Q, COUT, D, LOAD, CLK, R, S, CIN); // synthesis black_box
output Q;
output COUT;
input D;
input LOAD;
input CLK;
input R;
input S;
input CIN;
endmodule
module CCU_DCP(Q, COUT, D, LOAD, CLK, R, S, CIN); // synthesis black_box
output Q;
output COUT;
input D;
input LOAD;
input CLK;
input R;
input S;
input CIN;
endmodule
module CCU_AS(S0, COUT, A0, B0, CIN, AS); // synthesis black_box
output S0;
output COUT;
input A0;
input B0;
input CIN;
input AS;
endmodule
module CCU_AGB(COUT, A0, B0, CIN); // synthesis black_box
output COUT;
input A0;
input B0;
input CIN;
endmodule
module CCU_ABS(S0, COUT, D, PN, CIN); // synthesis black_box
output S0;
output COUT;
input D;
input PN;
input CIN;
endmodule
module BUFTL(O, I0, OE); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I0;
input OE;
endmodule
module BUFTI(O, I0, OE); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I0;
input OE;
endmodule
module OBUFTH(O, I0, OE); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I0;
input OE;
endmodule
module BUFF(O, I0); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I0;
endmodule
module BI_DIR(O, I0, IO, OE); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I0;
inout IO;
input OE;
endmodule
module BIPAD(BIPAD); // synthesis black_box
inout BIPAD;
endmodule
module AS_LSB(S0, COUT, A0, B0, CIN, AS); // synthesis black_box
output S0;
output COUT;
input A0;
input B0;
input CIN;
input AS;
endmodule
module AO321(O, I0, I1, I2, I3, I4, I5); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
endmodule
module AO221(O, I0, I1, I2, I3, I4); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
endmodule
module AO21(O, I0, I1, I2); // synthesis black_box
output O;
input I0;
input I1;
input I2;
endmodule
module AND9(O, I0, I1, I2, I3, I4, I5, I6, I7, I8); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
endmodule
module AND8(O, I0, I1, I2, I3, I4, I5, I6, I7); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
endmodule
module AND7(O, I0, I1, I2, I3, I4, I5, I6); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
endmodule
module AND6(O, I0, I1, I2, I3, I4, I5); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
endmodule
module AND5(O, I0, I1, I2, I3, I4); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
endmodule
module AND4(O, I0, I1, I2, I3); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
endmodule
module AND3(O, I0, I1, I2); // synthesis black_box
output O;
input I0;
input I1;
input I2;
endmodule
module AND20(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
input I11;
input I12;
input I13;
input I14;
input I15;
input I16;
input I17;
input I18;
input I19;
endmodule
module AND2(O, I0, I1); // synthesis black_box
output O;
input I0;
input I1;
endmodule
module AND19(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
input I11;
input I12;
input I13;
input I14;
input I15;
input I16;
input I17;
input I18;
endmodule
module AND18(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
input I11;
input I12;
input I13;
input I14;
input I15;
input I16;
input I17;
endmodule
module AND17(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
input I11;
input I12;
input I13;
input I14;
input I15;
input I16;
endmodule
module AND16(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
input I11;
input I12;
input I13;
input I14;
input I15;
endmodule
module AND15(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
input I11;
input I12;
input I13;
input I14;
endmodule
module AND14(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
input I11;
input I12;
input I13;
endmodule
module AND13(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
input I11;
input I12;
endmodule
module AND12(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
input I11;
endmodule
module AND11(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
input I10;
endmodule
module AND10(O, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9); // synthesis black_box
output O;
input I0;
input I1;
input I2;
input I3;
input I4;
input I5;
input I6;
input I7;
input I8;
input I9;
endmodule
module VF1_DFF_CE(Q, D, CLK, R, S, CE, NOTIFIER); // synthesis black_box
output Q;
input D;
input CLK;
input R;
input S;
input CE;
input NOTIFIER;
endmodule
module VF1_DFF(Q, D, CLK, R, S, NOTIFIER); // synthesis black_box
output Q;
input D;
input CLK;
input R;
input S;
input NOTIFIER;
endmodule
module VF1_LATCH(Q, D, LAT, R, S, NOTIFIER); // synthesis black_box
output Q;
input D;
input LAT;
input R;
input S;
input NOTIFIER;
endmodule
module VF1_JKFF(Q, CLK, J, K, S, R, NOTIFIER); // synthesis black_box
output Q;
input CLK;
input J;
input K;
input S;
input R;
input NOTIFIER;
endmodule
module VF1_RSFF(Q, CLK, RE, SE, S, R, NOTIFIER); // synthesis black_box
output Q;
input CLK;
input RE;
input SE;
input S;
input R;
input NOTIFIER;
endmodule
module VF1_TFF(Q, CLK, T, S, R, NOTIFIER); // synthesis black_box
output Q;
input CLK;
input T;
input S;
input R;
input NOTIFIER;
endmodule
