`timescale 1ns / 1ns

module asyn_ram_16x16 (Q, Data,WE, Address); //synthesis black_box

input [15:0] Data;
input WE;
input [3:0] Address;
output [15:0] Q;
endmodule

module myramv(Q,Data,WE,Address);
input [15:0] Data;
input WE;
input [3:0] Address;
output [15:0] Q;

asyn_ram_16x16 inst1 (Q,Data,WE,Address);
endmodule
