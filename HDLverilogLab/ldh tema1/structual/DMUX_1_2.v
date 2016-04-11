//-----------------------------------------------------
// Comparator pe 4 biti
// 
//-----------------------------------------------------


module DMUX_1_2(
in,
// sel,
out1,
out2
);

input in;

output out1;
output out2;

reg sel;

initial
begin
sel = 0;
end

wire n_sel;


NOT no(.A(sel),.O(n_sel));
AND and1(.A(in),.B(n_sel),.O(out1));
AND and2(.A(in),.B(sel),.O(out2));




endmodule








