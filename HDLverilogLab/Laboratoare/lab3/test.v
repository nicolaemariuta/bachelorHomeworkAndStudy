//Modul de test

module Test ();

wire   D;
wire  Q, QN;
wire   Ck;
wire Reset;

D_latch DUT(.Ck(Ck), .D(D), .Q(Q), .QN(QN), .Reset(Reset));

TB TB(.Ck(Ck), .D(D), .Reset(Reset));


endmodule