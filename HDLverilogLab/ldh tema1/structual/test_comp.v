

module test_comp();

reg [5:0] data;
reg [5:0] count;
wire out;

comparator_6 comp(.data(data), .count(count), .out(out));

initial
begin
data = 3;
count = 5;
#5 data = 4;
#5 count = 4;
end

endmodule  