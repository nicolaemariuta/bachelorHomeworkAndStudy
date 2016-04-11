module ACLK (O, I) /* synthesis black_box */;
    output O;
    input  I;
endmodule
module CLBMAP (A, B, C, D, E, K, DI, EC, RD, X, Y) /* synthesis black_box .noprune=1 */;
    input A, B, C, D, E, K, DI, EC, RD, X, Y;
endmodule
module CLBMAP_PUC (A, B, C, D, E, K, DI, EC, RD, X, Y) /* synthesis black_box .noprune=1 xc_alias="CLBMAP" xc_props="MAP=PUC"*/;
    input A, B, C, D, E, K, DI, EC, RD, X, Y;
endmodule
module CLBMAP_PLC (A, B, C, D, E, K, DI, EC, RD, X, Y) /* synthesis black_box .noprune=1 xc_alias="CLBMAP" xc_props="MAP=PLC"*/;
    input A, B, C, D, E, K, DI, EC, RD, X, Y;
endmodule
module CLBMAP_PUO (A, B, C, D, E, K, DI, EC, RD, X, Y) /* synthesis black_box .noprune=1 xc_alias="CLBMAP" xc_props="MAP=PUO"*/;
    input A, B, C, D, E, K, DI, EC, RD, X, Y;
endmodule
module CLBMAP_PLO (A, B, C, D, E, K, DI, EC, RD, X, Y) /* synthesis black_box .noprune=1 xc_alias="CLBMAP" xc_props="MAP=PLO"*/;
    input A, B, C, D, E, K, DI, EC, RD, X, Y;
endmodule
module CLB (A, B, C, D, E, O1, EC, K, RD, X, Y) /* synthesis black_box */;
    input A, B, C, D, E, O1, EC, K, RD;
    output X, Y;
endmodule
module GCLK (O, I) /* synthesis black_box */;
    output O;
    input  I;
endmodule
module ILD (Q, D, G) /* synthesis black_box xc_alias="INLAT" */;
    output   Q;
    input    G;
    input    D /* synthesis .ispad=1 */;
endmodule
module ILD_INT (Q, D, G) /* synthesis black_box xc_alias="INLAT" */;
    output   Q;
    input    G;
    input    D /* synthesis .ispad=1 */;
endmodule
module AND2 (O, I0, I1) /* synthesis black_box xc_alias="AND"*/;
    output   O;
    input    I0, I1;
endmodule
module AND3 (O, I0, I1, I2) /* synthesis black_box xc_alias="AND"*/;
    output   O;
    input    I0, I1, I2;
endmodule
module AND4 (O, I0, I1, I2, I3) /* synthesis black_box xc_alias="AND"*/;
    output   O;
    input    I0, I1, I2, I3;
endmodule
module AND5 (O, I0, I1, I2, I3, I4) /* synthesis black_box xc_alias="AND" */;
    output   O;
    input    I0, I1, I2, I3, I4;
endmodule
module BUFF (O, I) /* synthesis black_box xc_alias="BUF"*/;
    output   O;
    input    I;
endmodule
module BUFG (O, I) /* synthesis black_box */;
    output   O;
    input    I ;
endmodule
module BUFG_F (O, I) /* synthesis black_box xc_alias="BUFG" xc_props="FAST"*/;
    output   O;
    input    I ;
endmodule
module BUFT (O, I, T) /* synthesis black_box xc_alias="TBUF"*/;
    output   O /* synthesis syn_tristate=1 */;
    input    I, T;
assign O = ~T ? I : 'bz;
endmodule
module FDCE (Q, C, CE, CLR, D) /* synthesis black_box xc_alias="DFF" */;
    output   Q;
    input    C, CE, CLR, D;
endmodule
module FDC (Q, C, CLR, D) /* synthesis black_box xc_alias="DFF" */;
    output   Q;
    input    C, CLR, D;
endmodule
module FDCE_INT (Q, C, CE, CLR, D) /* synthesis black_box xc_alias="DFF" */;
    output   Q;
    input    C, CE, CLR, D;
endmodule
module INV (O, I) /* synthesis black_box */;
    output   O;
    input    I;
endmodule
module FDPI (Q, D, C, PRE);
    output Q;
    input C, D, PRE;
    wire Q_OUT, D_IN;

    INV u1 (D_IN, D);
    FDC u2 (Q_OUT, C, PRE, D_IN);
    INV u3 (Q, Q_OUT);
endmodule
module FDPEI (Q, D, C, CE, PRE);
    output Q;
    input C, D, CE, PRE;
    wire Q_OUT, D_IN;

    INV u1 (D_IN, D);
    FDCE u2 (Q_OUT, C, CE, PRE, D_IN);
    INV u3 (Q, Q_OUT);
endmodule
module IBUF (O, I) /* synthesis black_box */; 
	output   O;
 	input    I /* synthesis .ispad=1 */;
endmodule
module IBUF_U (O, I) /* synthesis black_box xc_alias="IBUF" xc_props="UNBONDED"*/; 
	output   O;
 	input    I /* synthesis .ispad=1 */;
endmodule
module IBUF_CMOS (O, I) /* synthesis black_box xc_alias="IBUF" xc_props="CMOS"*/; 
	output   O;
 	input    I /* synthesis .ispad=1 */;
endmodule
module IBUF_TTL (O, I) /* synthesis black_box xc_alias="IBUF" xc_props="TTL"*/; 
	output   O;
 	input    I /* synthesis .ispad=1 */;
endmodule
module IFD (Q, C, D) /* synthesis black_box xc_alias="INFF" */;
    output   Q;
    input    C;
    input    D /* synthesis .ispad=1 */;
endmodule
module IFD_U (Q, C, D) /* synthesis black_box xc_alias="INFF" xc_props="UNBONDED"*/;
    output   Q;
    input    C;
    input    D /* synthesis .ispad=1 */;
endmodule
module IFD_INT (Q, C, D) /* synthesis black_box xc_alias="INFF" */;
    output   Q;
    input    C;
    input D /* synthesis .ispad=1 */;
endmodule
module NAND2 (O, I0, I1) /* synthesis black_box xc_alias="NAND" */;
    output   O;
    input    I0, I1;
endmodule
module NAND3 (O, I0, I1, I2) /* synthesis black_box xc_alias="NAND" */;
    output   O;
    input    I0, I1, I2;
endmodule
module NAND4 (O, I0, I1, I2, I3) /* synthesis black_box xc_alias="NAND"*/;
    output   O;
    input    I0, I1, I2, I3;
endmodule
module NAND5 (O, I0, I1, I2, I3, I4) /* synthesis black_box xc_alias="NAND"*/;
    output   O;
    input    I0, I1, I2, I3, I4;
endmodule
module NOR2 (O, I0, I1) /* synthesis black_box xc_alias="NOR"*/;
    output   O;
    input    I0, I1;
endmodule
module NOR3 (O, I0, I1, I2) /* synthesis black_box xc_alias="NOR" */;
    output   O;
    input    I0, I1, I2;
endmodule
module NOR4 (O, I0, I1, I2, I3) /* synthesis black_box xc_alias="NOR" */;
    output   O;
    input    I0, I1, I2, I3;
endmodule
module NOR5 (O, I0, I1, I2, I3, I4) /* synthesis black_box xc_alias="NOR"*/;
    output   O;
    input    I0, I1, I2, I3, I4;
endmodule
module OBUF (O, I) /* synthesis black_box */;
    output   O /* synthesis .ispad=1 */;
    input    I;
endmodule
module OBUF_F (O, I) /* synthesis black_box xc_alias="OBUF" xc_props="FAST"*/;
    output   O /* synthesis .ispad=1 */;
    input    I;
endmodule
module OBUF_U (O, I) /* synthesis black_box xc_alias="OBUF" xc_props="UNBONDED"*/;
    output   O /* synthesis .ispad=1 */;
    input    I;
endmodule
module OBUF_INT (O, I) /* synthesis black_box */;
    output   O /* synthesis .ispad=1 */;
    input    I;
endmodule
module OBUFT (O, I, T) /* synthesis black_box */;
    output   O /* synthesis .ispad=1 */;
    input    I, T;
endmodule
module OBUFT_F (O, I, T) /* synthesis black_box xc_alias="OBUFT" xc_props="FAST"*/;
    output   O /* synthesis .ispad=1 */;
    input    I, T;
endmodule
module OBUFT_S (O, I, T) /* synthesis black_box xc_alias="OBUFT" xc_props="SLOW"*/;
    output   O /* synthesis .ispad=1 */;
    input    I, T;
endmodule
module OBUFT_INT (O, I, T) /* synthesis black_box */;
    output   O /* synthesis .ispad=1 */;
    input    I, T;
endmodule
module OFD (Q, C, D) /* synthesis black_box xc_alias="OUTFF" */;
    output   Q /* synthesis .ispad=1 */;
    input    C, D;
endmodule
module OFD_F (Q, C, D) /* synthesis black_box xc_alias="OUTFF" xc_props="FAST"*/;
    output   Q /* synthesis .ispad=1 */;
    input    C, D;
endmodule
module OFD_FU (Q, C, D) /* synthesis black_box xc_alias="OUTFF" xc_props="FAST, UNBONDED"*/;
    output   Q /* synthesis .ispad=1 */;
    input    C, D;
endmodule
module OFD_U (Q, C, D) /* synthesis black_box xc_alias="OUTFF" xc_props="UNBONDED"*/;
    output   Q /* synthesis .ispad=1 */;
    input    C, D;
endmodule
module OFD_INT (Q, C, D) /* synthesis black_box xc_alias="OUTFF" */;
    output   Q /* synthesis .ispad=1 */;
    input    C, D;
endmodule
module OFDT (O, C, D, T) /* synthesis black_box xc_alias="OUTFFT" */;
    output   O /* synthesis .ispad=1 */;
    input    C, D, T;
endmodule
module OFDT_F (O, C, D, T) /* synthesis black_box xc_alias="OUTFFT" xc_props="FAST"*/;
    output   O /* synthesis .ispad=1 */;
    input    C, D, T;
endmodule
module OFDT_INT (O, C, D, T) /* synthesis black_box xc_alias="OUTFFT" */;
    output   O /* synthesis .ispad=1 */;
    input    C, D, T;
endmodule
module OR2 (O, I0, I1) /* synthesis black_box xc_alias="OR"*/;
    output   O;
    input    I0, I1;
endmodule
module OR3 (O, I0, I1, I2) /* synthesis black_box xc_alias="OR" */;
    output   O;
    input    I0, I1, I2;
endmodule
module OR4 (O, I0, I1, I2, I3) /* synthesis black_box xc_alias="OR" */;
    output   O;
    input    I0, I1, I2, I3;
endmodule
module OR5 (O, I0, I1, I2, I3, I4) /* synthesis black_box xc_alias="OR" */;
    output   O;
    input    I0, I1, I2, I3, I4;
endmodule
module OSC (O) /* synthesis black_box .noprune=1 */;
  output    O;
endmodule
module GXTL (O) /* synthesis .noprune=1 */;
  output    O;
  wire OSCOUT;
  OSC i2 (OSCOUT);
  ACLK i1 (O, OSCOUT);
endmodule
module PULLUP (O) /* synthesis black_box .noprune=1 */;
`ifdef synthesis
  input O;
`else
  output O;
`endif
endmodule
module PULLUP1 (O) /* synthesis .noprune=1 */;
`ifdef synthesis
  input O;
`else
  output O;
`endif
 PULLUP p(O);
endmodule
module XGND(GROUND) /* synthesis black_box .noprune=1 xc_alias="GND"*/;
  output GROUND;
endmodule
module XNOR2 (O, I0, I1) /* synthesis black_box xc_alias="XNOR"*/;
    output   O;
    input    I0, I1;
endmodule
module XNOR3 (O, I0, I1, I2) /* synthesis black_box xc_alias=XNOR"*/;
    output   O;
    input    I0, I1, I2;
endmodule
module XNOR4 (O, I0, I1, I2, I3) /* synthesis black_box xc_alias="XNOR"*/;
    output   O;
    input    I0, I1, I2, I3;
endmodule
module XNOR5 (O, I0, I1, I2, I3, I4) /* synthesis black_box xc_alias="XNOR"*/;
    output   O;
    input    I0, I1, I2, I3, I4;
endmodule
module XOR2 (O, I0, I1) /* synthesis black_box xc_alias="XOR"*/;
    output   O;
    input    I0, I1;
endmodule
module XOR3 (O, I0, I1, I2) /* synthesis black_box xc_alias="XOR"*/;
    output   O;
    input    I0, I1, I2;
endmodule
module XOR4 (O, I0, I1, I2, I3) /* synthesis black_box xc_alias="XOR"*/;
    output   O;
    input    I0, I1, I2, I3;
endmodule
module XOR5 (O, I0, I1, I2, I3, I4) /* synthesis black_box xc_alias="XOR"*/;
    output   O;
    input    I0, I1, I2, I3, I4;
endmodule
module XVCC(POWER) /* synthesis black_box xc_alias="VCC"*/;
  output POWER;
endmodule
module IOBUF (O, IO, I, T) /* synthesis black_box */;
    output O;
    inout IO /* synthesis .ispad=1 */;
    input I,T;

    OBUFT_S i0 (IO, I, T);
    IBUF i1 (O, IO);
endmodule
module IOBUF_N_F (O, IO, I, T) /* synthesis black_box */ ;
    output O;
    inout IO /* synthesis .ispad=1 */;
    input I,T;

    OBUFT_F i0 (IO, I, T);
    IBUF i1 (O, IO);
endmodule
module IOBUF_N_S (O, IO, I, T) /* synthesis black_box */;
    output O;
    inout IO /* synthesis .ispad=1 */;
    input I,T;

    OBUFT_S i0 (IO, I, T);
    IBUF i1 (O, IO);
endmodule
