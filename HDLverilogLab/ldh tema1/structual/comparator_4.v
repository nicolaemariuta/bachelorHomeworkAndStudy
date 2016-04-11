//-----------------------------------------------------
// Comparator pe 4 biti
// 
//-----------------------------------------------------


module comparator_4 (
data,
count,
out
);

input[3:0] data;
input [3:0] count;
output out;







wire A0 = data[0];
wire B0 = count[0];

wire A1 = data[1];
wire B1 = count[1];

wire A2 = data[2];
wire B2 = count[2];

wire A3 = data[3];
wire B3 = count[3];

wire C0;
wire C1;
wire C2;
wire C3;

XOR x0(.A(A0),.B(B0),.O(C0));
XOR x1(.A(A1),.B(B1),.O(C1));
XOR x2(.A(A2),.B(B2),.O(C2));
XOR x3(.A(A3),.B(B3),.O(C3));

NOR_4 iesire(.A(C0), .B(C1), .C(C2), .D(C3), .O(out));




endmodule








