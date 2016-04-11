//-----------------------------------------------------
// Comparator pe 4 biti
// 
//-----------------------------------------------------


module comparator_6 (
data,
count,
out
);

input[5:0] data;
input [5:0] count;
output out;







wire A0 = data[0];
wire B0 = count[0];

wire A1 = data[1];
wire B1 = count[1];

wire A2 = data[2];
wire B2 = count[2];

wire A3 = data[3];
wire B3 = count[3];

wire A4 = data[4];
wire B4 = count[4];

wire A5 = data[5];
wire B5 = count[5];



wire C0;
wire C1;
wire C2;
wire C3;
wire C4;
wire C5;

XOR x0(.A(A0),.B(B0),.O(C0));
XOR x1(.A(A1),.B(B1),.O(C1));
XOR x2(.A(A2),.B(B2),.O(C2));
XOR x3(.A(A3),.B(B3),.O(C3));
XOR x4(.A(A4),.B(B4),.O(C4));
XOR x5(.A(A5),.B(B5),.O(C5));

NOR_6 iesire(.A(C0), .B(C1), .C(C2), .D(C3), .E(C4), .F(C5) ,  .O(out));




endmodule








