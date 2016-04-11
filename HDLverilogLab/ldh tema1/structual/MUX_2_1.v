//-----------------------------------------------------
// Comparator pe 4 biti
// 
//-----------------------------------------------------


module MUX_2_1(
in1,
in2,
sel,
out
);

input in1;
input in2;
input sel;

output out;

wire in_1;
wire in_2;
wire n_sel;

NOT no1(.A(sel),.O(n_sel));

AND and1 (.A(in1),.B(sel),.O(in_1));
AND and2 (.A(in2),.B(n_sel),.O(in_2));

OR or_out(.A(in_1),.B(in_2),.O(out));

endmodule








