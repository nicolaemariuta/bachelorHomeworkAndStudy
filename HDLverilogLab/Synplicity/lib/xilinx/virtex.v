module BSCAN_VIRTEX(TDO1, TDO2, TDI, RESET, SHIFT, UPDATE, SEL1, DRCK1, SEL2, DRCK2); // synthesis black_box
input TDO1;
input TDO2;
output TDI;
output RESET;
output SHIFT;
output UPDATE;
output SEL1;
output DRCK1;
output SEL2;
output DRCK2;
endmodule
module BUF(O, I); // synthesis black_box
output O;
input I;
endmodule
module BUFCF(O, I); // synthesis black_box
output O;
input I;
endmodule
module BUFE(O, I, E); // synthesis black_box
output O /* synthesis syn_tristate = 1 */;
input I;
input E;
endmodule
module BUFG(O, I); // synthesis black_box
output O;
input I;
endmodule
module BUFGDLL(O, I); // synthesis black_box
output O;
input I;
endmodule
module BUFGIO(O, I); // synthesis black_box
output O;
input I;
endmodule
module BUFGP(O, I); // synthesis black_box
output O;
input I;
endmodule
module BUFT(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate = 1 */;
input I;
input T;
endmodule
module CAPTURE_VIRTEX(CAP, CLK); // synthesis black_box .noprune = 1
input CAP;
input CLK;
endmodule
module CLKDLL(CLK0, CLK90, CLK180, CLK270, CLK2X, CLKDV, LOCKED, CLKIN, CLKFB, RST); // synthesis black_box
output CLK0;
output CLK90;
output CLK180;
output CLK270;
output CLK2X;
output CLKDV;
output LOCKED;
input CLKIN;
input CLKFB;
input RST;
endmodule
module CLKDLLHF(CLK0, CLK180, CLKDV, LOCKED, CLKIN, CLKFB, RST); // synthesis black_box
output CLK0;
output CLK180;
output CLKDV;
output LOCKED;
input CLKIN;
input CLKFB;
input RST;
endmodule
module FD(Q, D, C); // synthesis black_box
output Q;
input D;
input C;
endmodule
module FDC(Q, D, C, CLR); // synthesis black_box
output Q;
input D;
input C;
input CLR;
endmodule
module FDCE(Q, D, C, CE, CLR); // synthesis black_box
output Q;
input D;
input C;
input CE;
input CLR;
endmodule
module FDCE_1(Q, D, C, CE, CLR); // synthesis black_box
output Q;
input D;
input C;
input CE;
input CLR;
endmodule
module FDCP(Q, D, C, CLR, PRE); // synthesis black_box
output Q;
input D;
input C;
input CLR;
input PRE;
endmodule
module FDCPE(Q, D, C, CE, CLR, PRE); // synthesis black_box
output Q;
input D;
input C;
input CE;
input CLR;
input PRE;
endmodule
module FDCPE_1(Q, D, C, CE, CLR, PRE); // synthesis black_box
output Q;
input D;
input C;
input CE;
input CLR;
input PRE;
endmodule
module FDCP_1(Q, D, C, CLR, PRE); // synthesis black_box
output Q;
input D;
input C;
input CLR;
input PRE;
endmodule
module FDC_1(Q, D, C, CLR); // synthesis black_box
output Q;
input D;
input C;
input CLR;
endmodule
module FDE(Q, D, C, CE); // synthesis black_box
output Q;
input D;
input C;
input CE;
endmodule
module FDE_1(Q, D, C, CE); // synthesis black_box
output Q;
input D;
input C;
input CE;
endmodule
module FDP(Q, D, C, PRE); // synthesis black_box
output Q;
input D;
input C;
input PRE;
endmodule
module FDPE(Q, D, C, CE, PRE); // synthesis black_box
output Q;
input D;
input C;
input CE;
input PRE;
endmodule
module FDPE_1(Q, D, C, CE, PRE); // synthesis black_box
output Q;
input D;
input C;
input CE;
input PRE;
endmodule
module FDP_1(Q, D, C, PRE); // synthesis black_box
output Q;
input D;
input C;
input PRE;
endmodule
module FDR(Q, D, C, R); // synthesis black_box
output Q;
input D;
input C;
input R;
endmodule
module FDRE(Q, D, C, CE, R); // synthesis black_box
output Q;
input D;
input C;
input CE;
input R;
endmodule
module FDRE_1(Q, D, C, CE, R); // synthesis black_box
output Q;
input D;
input C;
input CE;
input R;
endmodule
module FDRS(Q, D, C, R, S); // synthesis black_box
output Q;
input D;
input C;
input R;
input S;
endmodule
module FDRSE(Q, D, C, CE, R, S); // synthesis black_box
output Q;
input D;
input C;
input CE;
input R;
input S;
endmodule
module FDRSE_1(Q, D, C, CE, R, S); // synthesis black_box
output Q;
input D;
input C;
input CE;
input R;
input S;
endmodule
module FDRS_1(Q, D, C, R, S); // synthesis black_box
output Q;
input D;
input C;
input R;
input S;
endmodule
module FDR_1(Q, D, C, R); // synthesis black_box
output Q;
input D;
input C;
input R;
endmodule
module FDS(Q, D, C, S); // synthesis black_box
output Q;
input D;
input C;
input S;
endmodule
module FDSE(Q, D, C, CE, S); // synthesis black_box
output Q;
input D;
input C;
input CE;
input S;
endmodule
module FDSE_1(Q, D, C, CE, S); // synthesis black_box
output Q;
input D;
input C;
input CE;
input S;
endmodule
module FDS_1(Q, D, C, S); // synthesis black_box
output Q;
input D;
input C;
input S;
endmodule
module FD_1(Q, D, C); // synthesis black_box
output Q;
input D;
input C;
endmodule
module GND(G); // synthesis black_box
output G;
endmodule
module IBUF(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG(O, I); // synthesis black_box black_box_pad_pin="I"
output O;
input I;
endmodule
module IBUFG_AGP(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_CTT(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_GTL(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_GTLP(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_HSTL_I(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_HSTL_III(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_HSTL_IV(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_LVCMOS2(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_PCI33_3(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_PCI33_5(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_PCI66_3(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_SSTL2_I(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_SSTL2_II(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_SSTL3_I(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUFG_SSTL3_II(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_AGP(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_CTT(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_GTL(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_GTLP(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_HSTL_I(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_HSTL_III(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_HSTL_IV(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_LVCMOS2(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_PCI33_3(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_PCI33_5(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_PCI66_3(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_SSTL2_I(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_SSTL2_II(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_SSTL3_I(O, I); // synthesis black_box
output O;
input I;
endmodule
module IBUF_SSTL3_II(O, I); // synthesis black_box
output O;
input I;
endmodule
module INV(O, I); // synthesis black_box
output O;
input I;
endmodule
module IOBUF(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_AGP(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_CTT(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_F_12(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_F_16(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_F_2(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_F_24(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_F_4(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_F_6(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_F_8(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_GTL(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_GTLP(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_HSTL_I(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_HSTL_III(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_HSTL_IV(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_LVCMOS2(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_PCI33_3(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_PCI33_5(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_PCI66_3(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_SSTL2_I(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_SSTL2_II(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_SSTL3_I(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_SSTL3_II(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_S_12(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_S_16(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_S_2(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_S_24(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_S_4(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_S_6(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module IOBUF_S_8(O, IO, I, T); // synthesis black_box
output O;
inout IO;
input I;
input T;
endmodule
module KEEPER(O); // synthesis black_box
inout O;
endmodule
module LD(Q, D, G); // synthesis black_box
output Q;
input D;
input G;
endmodule
module LDC(Q, D, G, CLR); // synthesis black_box
output Q;
input D;
input G;
input CLR;
endmodule
module LDCE(Q, D, G, GE, CLR); // synthesis black_box
output Q;
input D;
input G;
input GE;
input CLR;
endmodule
module LDCE_1(Q, D, G, GE, CLR); // synthesis black_box
output Q;
input D;
input G;
input GE;
input CLR;
endmodule
module LDCP(Q, D, G, CLR, PRE); // synthesis black_box
output Q;
input D;
input G;
input CLR;
input PRE;
endmodule
module LDCPE(Q, D, G, GE, CLR, PRE); // synthesis black_box
output Q;
input D;
input G;
input GE;
input CLR;
input PRE;
endmodule
module LDCPE_1(Q, D, G, GE, CLR, PRE); // synthesis black_box
output Q;
input D;
input G;
input GE;
input CLR;
input PRE;
endmodule
module LDCP_1(Q, D, G, CLR, PRE); // synthesis black_box
output Q;
input D;
input G;
input CLR;
input PRE;
endmodule
module LDC_1(Q, D, G, CLR); // synthesis black_box
output Q;
input D;
input G;
input CLR;
endmodule
module LDE(Q, D, G, GE); // synthesis black_box
output Q;
input D;
input G;
input GE;
endmodule
module LDE_1(Q, D, G, GE); // synthesis black_box
output Q;
input D;
input G;
input GE;
endmodule
module LDP(Q, D, G, PRE); // synthesis black_box
output Q;
input D;
input G;
input PRE;
endmodule
module LDPE(Q, D, G, GE, PRE); // synthesis black_box
output Q;
input D;
input G;
input GE;
input PRE;
endmodule
module LDPE_1(Q, D, G, GE, PRE); // synthesis black_box
output Q;
input D;
input G;
input GE;
input PRE;
endmodule
module LDP_1(Q, D, G, PRE); // synthesis black_box
output Q;
input D;
input G;
input PRE;
endmodule
module LD_1(Q, D, G); // synthesis black_box
output Q;
input D;
input G;
endmodule
module LUT1(O, I0); // synthesis xc_map=lut
output O;
input I0;
parameter INIT = 2'b0;
assign O = I0 ? INIT[1] : INIT[0];
endmodule
module LUT1_D(O, LO, I0); 
output O;
output LO;
input I0;
parameter INIT = 2'b0;
LUT1 d(O, I0);
defparam d.INIT = INIT;
assign LO=O;
endmodule
module LUT1_L(LO, I0); // synthesis xc_map=lut
output LO;
input I0;
parameter INIT = 2'b0;
assign LO = I0 ? INIT[1] : INIT[0];
endmodule
module LUT2(O, I0, I1); // synthesis xc_map=lut
output O;
input I0;
input I1;
parameter INIT = 4'b0;
assign O = I1 ? (I0 ? INIT[3] : INIT[2]) : (I0 ? INIT[1] : INIT[0]);
endmodule
module LUT2_D(O, LO, I0, I1); 
output O;
output LO;
input I0;
input I1;
parameter INIT = 4'b0;
LUT2 d(O, I0, I1);
defparam d.INIT = INIT;
assign LO=O;
endmodule
module LUT2_L(LO, I0, I1); // synthesis xc_map=lut
output LO;
input I0;
input I1;
parameter INIT = 4'b0;
assign LO = I1 ? (I0 ? INIT[3] : INIT[2]) : (I0 ? INIT[1] : INIT[0]);
endmodule
module LUT3(O, I0, I1, I2); // synthesis xc_map=lut
output O;
input I0;
input I1;
input I2;
parameter INIT = 8'b0;
assign O = I2 ?
     (I1 ? (I0 ? INIT[7] : INIT[6]) : (I0 ? INIT[5] : INIT[4])) : 
     (I1 ? (I0 ? INIT[3] : INIT[2]) : (I0 ? INIT[1] : INIT[0]));
endmodule
module LUT3_D(O, LO, I0, I1, I2); 
output O;
output LO;
input I0;
input I1;
input I2;
parameter INIT = 8'b0;
LUT3 d(O, I0, I1, I2);
defparam d.INIT = INIT;
assign LO=O;
endmodule
module LUT3_L(LO, I0, I1, I2); // synthesis xc_map=lut
output LO;
input I0;
input I1;
input I2;
parameter INIT = 8'b0;
assign LO = I2 ?
     (I1 ? (I0 ? INIT[7] : INIT[6]) : (I0 ? INIT[5] : INIT[4])) : 
     (I1 ? (I0 ? INIT[3] : INIT[2]) : (I0 ? INIT[1] : INIT[0]));
endmodule
module LUT4(O, I0, I1, I2, I3); // synthesis xc_map=lut
output O;
input I0;
input I1;
input I2;
input I3;
parameter INIT = 16'b0;
assign O = I3 ?
    (I2 ?
     (I1 ? (I0 ? INIT[15] : INIT[14]) : (I0 ? INIT[13] : INIT[12])) : 
     (I1 ? (I0 ? INIT[11] : INIT[10]) : (I0 ? INIT[9] : INIT[8]))) :
    (I2 ?
     (I1 ? (I0 ? INIT[7] : INIT[6]) : (I0 ? INIT[5] : INIT[4])) : 
     (I1 ? (I0 ? INIT[3] : INIT[2]) : (I0 ? INIT[1] : INIT[0])));
endmodule
module LUT4_D(O, LO, I0, I1, I2, I3); 
output O;
output LO;
input I0;
input I1;
input I2;
input I3;
parameter INIT = 16'b0;
LUT4 d(O, I0, I1, I2, I3);
defparam d.INIT = INIT;
assign LO=O;
endmodule
module LUT4_L(LO, I0, I1, I2, I3); // synthesis xc_map=lut
output LO;
input I0;
input I1;
input I2;
input I3;
parameter INIT = 16'b0;
assign LO = I3 ?
    (I2 ?
     (I1 ? (I0 ? INIT[15] : INIT[14]) : (I0 ? INIT[13] : INIT[12])) : 
     (I1 ? (I0 ? INIT[11] : INIT[10]) : (I0 ? INIT[9] : INIT[8]))) :
    (I2 ?
     (I1 ? (I0 ? INIT[7] : INIT[6]) : (I0 ? INIT[5] : INIT[4])) : 
     (I1 ? (I0 ? INIT[3] : INIT[2]) : (I0 ? INIT[1] : INIT[0])));
endmodule
module MULT_AND(LO, I0, I1); // synthesis black_box
output LO;
input I0;
input I1;
endmodule
module MUXCY(O, CI, DI, S); // synthesis black_box
output O;
input CI;
input DI;
input S;
endmodule
module MUXCY_D(O, LO, CI, DI, S); // synthesis black_box
output O;
output LO;
input CI;
input DI;
input S;
endmodule
module MUXCY_L(LO, CI, DI, S); // synthesis black_box
output LO;
input CI;
input DI;
input S;
endmodule
module MUXF5(O, I0, I1, S); // synthesis black_box
output O;
input I0;
input I1;
input S;
endmodule
module MUXF5_D(O, LO, I0, I1, S); // synthesis black_box
output O;
output LO;
input I0;
input I1;
input S;
endmodule
module MUXF5_L(LO, I0, I1, S); // synthesis black_box
output LO;
input I0;
input I1;
input S;
endmodule
module MUXF6(O, I0, I1, S); // synthesis black_box
output O;
input I0;
input I1;
input S;
endmodule
module MUXF6_D(O, LO, I0, I1, S); // synthesis black_box
output O;
output LO;
input I0;
input I1;
input S;
endmodule
module MUXF6_L(LO, I0, I1, S); // synthesis black_box
output LO;
input I0;
input I1;
input S;
endmodule
module OBUF(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUFT(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_AGP(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_CTT(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_F_12(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_F_16(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_F_2(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_F_24(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_F_4(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_F_6(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_F_8(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_GTL(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_GTLP(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_HSTL_I(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_HSTL_III(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_HSTL_IV(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_LVCMOS2(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_PCI33_3(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_PCI33_5(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_PCI66_3(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_SSTL2_I(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_SSTL2_II(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_SSTL3_I(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_SSTL3_II(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_S_12(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_S_16(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_S_2(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_S_24(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_S_4(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_S_6(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUFT_S_8(O, I, T); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
input I;
input T;
endmodule
module OBUF_AGP(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_CTT(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_F_12(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_F_16(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_F_2(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_F_24(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_F_4(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_F_6(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_F_8(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_GTL(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_GTLP(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_HSTL_I(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_HSTL_III(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_HSTL_IV(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_LVCMOS2(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_PCI33_3(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_PCI33_5(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_PCI66_3(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_SSTL2_I(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_SSTL2_II(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_SSTL3_I(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_SSTL3_II(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_S_12(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_S_16(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_S_2(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_S_24(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_S_4(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_S_6(O, I); // synthesis black_box
output O;
input I;
endmodule
module OBUF_S_8(O, I); // synthesis black_box
output O;
input I;
endmodule
module PULLDOWN(O); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
endmodule
module PULLUP(O); // synthesis black_box
output O /* synthesis syn_tristate=1 */;
endmodule
module RAM16X1D(DPO, SPO, A0, A1, A2, A3, D, DPRA0, DPRA1, DPRA2, DPRA3, WCLK, WE); // synthesis black_box
output DPO;
output SPO;
input A0;
input A1;
input A2;
input A3;
input D;
input DPRA0;
input DPRA1;
input DPRA2;
input DPRA3;
input WCLK;
input WE;
endmodule
module RAM16X1D_1(DPO, SPO, A0, A1, A2, A3, D, DPRA0, DPRA1, DPRA2, DPRA3, WCLK, WE); // synthesis black_box
output DPO;
output SPO;
input A0;
input A1;
input A2;
input A3;
input D;
input DPRA0;
input DPRA1;
input DPRA2;
input DPRA3;
input WCLK;
input WE;
endmodule
module RAM16X1S(O, A0, A1, A2, A3, D, WCLK, WE); // synthesis black_box
output O;
input A0;
input A1;
input A2;
input A3;
input D;
input WCLK;
input WE;
endmodule
module RAM16X1S_1(O, A0, A1, A2, A3, D, WCLK, WE); // synthesis black_box
output O;
input A0;
input A1;
input A2;
input A3;
input D;
input WCLK;
input WE;
endmodule
module RAM32X1S(O, A0, A1, A2, A3, A4, D, WCLK, WE); // synthesis black_box
output O;
input A0;
input A1;
input A2;
input A3;
input A4;
input D;
input WCLK;
input WE;
endmodule
module RAM32X1S_1(O, A0, A1, A2, A3, A4, D, WCLK, WE); // synthesis black_box
output O;
input A0;
input A1;
input A2;
input A3;
input A4;
input D;
input WCLK;
input WE;
endmodule
module RAMB4_S1(DO, ADDR, DI, EN, CLK, WE, RST); // synthesis black_box
output [0:0] DO;
input [11:0] ADDR;
input [0:0] DI;
input EN;
input CLK;
input WE;
input RST;
endmodule
module RAMB4_S16(DO, ADDR, DI, EN, CLK, WE, RST); // synthesis black_box
output [15:0] DO;
input [7:0] ADDR;
input [15:0] DI;
input EN;
input CLK;
input WE;
input RST;
endmodule
module RAMB4_S16_S16(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [15:0] DOA;
output [15:0] DOB;
input [7:0] ADDRA;
input [15:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [7:0] ADDRB;
input [15:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S1_S1(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [0:0] DOA;
output [0:0] DOB;
input [11:0] ADDRA;
input [0:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [11:0] ADDRB;
input [0:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S1_S16(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [0:0] DOA;
output [15:0] DOB;
input [11:0] ADDRA;
input [0:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [7:0] ADDRB;
input [15:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S1_S2(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [0:0] DOA;
output [1:0] DOB;
input [11:0] ADDRA;
input [0:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [10:0] ADDRB;
input [1:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S1_S4(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [0:0] DOA;
output [3:0] DOB;
input [11:0] ADDRA;
input [0:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [9:0] ADDRB;
input [3:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S1_S8(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [0:0] DOA;
output [7:0] DOB;
input [11:0] ADDRA;
input [0:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [8:0] ADDRB;
input [7:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S2(DO, ADDR, DI, EN, CLK, WE, RST); // synthesis black_box
output [1:0] DO;
input [10:0] ADDR;
input [1:0] DI;
input EN;
input CLK;
input WE;
input RST;
endmodule
module RAMB4_S2_S16(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [1:0] DOA;
output [15:0] DOB;
input [10:0] ADDRA;
input [1:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [7:0] ADDRB;
input [15:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S2_S2(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [1:0] DOA;
output [1:0] DOB;
input [10:0] ADDRA;
input [1:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [10:0] ADDRB;
input [1:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S2_S4(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [1:0] DOA;
output [3:0] DOB;
input [10:0] ADDRA;
input [1:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [9:0] ADDRB;
input [3:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S2_S8(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [1:0] DOA;
output [7:0] DOB;
input [10:0] ADDRA;
input [1:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [8:0] ADDRB;
input [7:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S4(DO, ADDR, DI, EN, CLK, WE, RST); // synthesis black_box
output [3:0] DO;
input [9:0] ADDR;
input [3:0] DI;
input EN;
input CLK;
input WE;
input RST;
endmodule
module RAMB4_S4_S16(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [3:0] DOA;
output [15:0] DOB;
input [9:0] ADDRA;
input [3:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [7:0] ADDRB;
input [15:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S4_S4(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [3:0] DOA;
output [3:0] DOB;
input [9:0] ADDRA;
input [3:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [9:0] ADDRB;
input [3:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S4_S8(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [3:0] DOA;
output [7:0] DOB;
input [9:0] ADDRA;
input [3:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [8:0] ADDRB;
input [7:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S8(DO, ADDR, DI, EN, CLK, WE, RST); // synthesis black_box
output [7:0] DO;
input [8:0] ADDR;
input [7:0] DI;
input EN;
input CLK;
input WE;
input RST;
endmodule
module RAMB4_S8_S16(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [7:0] DOA;
output [15:0] DOB;
input [8:0] ADDRA;
input [7:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [7:0] ADDRB;
input [15:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module RAMB4_S8_S8(DOA, DOB, ADDRA, DIA, ENA, CLKA, WEA, RSTA, ADDRB, DIB, ENB, CLKB, WEB, RSTB); // synthesis black_box
output [7:0] DOA;
output [7:0] DOB;
input [8:0] ADDRA;
input [7:0] DIA;
input ENA;
input CLKA;
input WEA;
input RSTA;
input [8:0] ADDRB;
input [7:0] DIB;
input ENB;
input CLKB;
input WEB;
input RSTB;
endmodule
module SRL16(Q, A0, A1, A2, A3, D, CLK); // synthesis black_box
output Q;
input A0;
input A1;
input A2;
input A3;
input D;
input CLK;
endmodule
module SRL16E(Q, A0, A1, A2, A3, D, CLK, CE); // synthesis black_box
output Q;
input A0;
input A1;
input A2;
input A3;
input D;
input CLK;
input CE;
endmodule
module SRL16E_1(Q, A0, A1, A2, A3, D, CLK, CE); // synthesis black_box
output Q;
input A0;
input A1;
input A2;
input A3;
input D;
input CLK;
input CE;
endmodule
module SRL16_1(Q, A0, A1, A2, A3, D, CLK); // synthesis black_box
output Q;
input A0;
input A1;
input A2;
input A3;
input D;
input CLK;
endmodule
module VCC(P); // synthesis black_box .noprune = 1
output P;
endmodule
module XORCY(O, CI, LI); // synthesis black_box
output O;
input CI;
input LI;
endmodule
module XORCY_D(O, LO, CI, LI); // synthesis black_box
output O;
output LO;
input CI;
input LI;
endmodule
module XORCY_L(LO, CI, LI); // synthesis black_box
output LO;
input CI;
input LI;
endmodule
module STARTUP_VIRTEX_CLK (CLK)
/* synthesis black_box .noprune=1 xc_alias="STARTUP_VIRTEX"*/ ;
    input  CLK;
endmodule
module STARTUP_VIRTEX_GSR (GSR) /* synthesis black_box .noprune=1 */;
    input  GSR;
endmodule
module STARTUP_VIRTEX_GTS (GTS) /* synthesis black_box .noprune=1 xc_alias="STARTUP_VIRTEX"*/;
    input  GTS;
endmodule
module STARTUP_VIRTEX_ALL(GSR, GTS, CLK)
/* synthesis black_box .noprune=1 xc_alias="STARTUP_VIRTEX" */ ;
input GSR /* synthesis syn_defaultvalue=0 */,
      GTS /* synthesis syn_defaultvalue=0 */,
      CLK /* synthesis syn_defaultvalue=0 */;
endmodule
module STARTUP_VIRTEX(GSR, GTS, CLK)
/* synthesis .noprune=1 */;
input GSR /* synthesis syn_defaultvalue=0 */,
      GTS /* synthesis syn_defaultvalue=0 */,
      CLK /* synthesis syn_defaultvalue=0 */;
STARTUP_VIRTEX_GSR gsr( GSR );
STARTUP_VIRTEX_GTS gts( GTS );
STARTUP_VIRTEX_CLK clk(.CLK(CLK));
endmodule
