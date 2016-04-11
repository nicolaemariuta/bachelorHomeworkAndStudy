

module test_mux();

reg in1;
reg in2;
reg sel;
wire out;

MUX_2_1 DUT(.in1(in1), .in2(in2), .sel(sel), .out(out));

initial
begin
in1 = 1;
in2 = 0;
sel = 1;
#2 sel =0;
end

endmodule  