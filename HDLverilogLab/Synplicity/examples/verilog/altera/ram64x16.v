// LPM RAM example
//
// Define the black box here (pick a name, say myram_64x16)
// Notice that immediately after the port list, but before the semicolon ';'
//      is the black_box synthesis directive with the LPM_TYPE specified
//      as "LPM_RAM_DQ", and other parameter values set.

module myram_64x16 (
    data,address,inclock,outclock,we,q) /* synthesis black_box LPM_WIDTH=16 LPM_WIDTHAD=6 LPM_TYPE="LPM_RAM_DQ"  */ ; 

input [15:0] data;
input [5:0] address;
input inclock, outclock;
input we;
output [15:0] q;

// Notice that this is an empty module!
endmodule

// Instantiate the LPM parameterized module here in this 
//     higher level module myram
module myram(clock, we, data, address, q);
input clock, we;
input [15:0] data;
input [5:0] address;
output [15:0] q;


myram_64x16 inst1 (
    data,
    address, 
    clock, clock, we, 
     q);

endmodule

