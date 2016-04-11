//-----------------------------------------------------
// Descriere OR
//-----------------------------------------------------



module NOR_6 (A, B, C, D, E, F, O);

input A;
input B;
input C;
input D;
input E;
input F;

output O;




assign  O = ~(A|B|C|D|E|F);
 

endmodule