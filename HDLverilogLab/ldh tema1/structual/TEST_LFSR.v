module TEST_LFSR();


parameter width = 6;

wire [width-1 : 0] data;

wire [width-1 : 0] count_to;
wire load;
wire clk;
wire cen;
wire reset;

wire [width-1 : 0] count;
wire tercnt;

test_bench_struct TB(.data(data), .count_to(count_to), .load(load), .cen(cen), .clk(clk), .reset(reset));
DW03_lfsr_dcnto_inst_struct lfsr(.data(data), .count_to(count_to), .load(load), .cen(cen), .clk(clk), .reset(reset), .count(count), .tercnt(tercnt));



endmodule 