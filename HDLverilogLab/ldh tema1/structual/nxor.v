//-----------------------------------------------------
// Descriere NXOR
//-----------------------------------------------------




module NXOR (A, B, O);

input A;
input B;

output O;




assign  O = ~(A ^ B);
 

endmodule