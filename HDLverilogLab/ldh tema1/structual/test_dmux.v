module test_dmux();


reg in;
reg sel;
wire out1;
wire out2;

DMUX_1_2 dmux(.in(in),.sel(sel),.out1(out1),.out2(out2));

initial
begin
in = 0;
sel = 0;
#1 in =0;
#1 sel =1;
#2 in =1;
#2 sel =0;
#3 in =1;
#3 sel =1;
end

endmodule