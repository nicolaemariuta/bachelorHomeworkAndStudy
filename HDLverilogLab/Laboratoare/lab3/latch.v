// Latch de tip D

`timescale 1 ns/1ns

module D_latch (Ck, D, Q, QN, Reset);
input    Ck;
input    D;
input Reset;
output   Q;
output   QN;


  assign Q = Reset ? 0: (~Ck ?  D : Q);
  assign QN = Reset ? 1 : ( ~Ck ? ~D : QN);
  
  

endmodule