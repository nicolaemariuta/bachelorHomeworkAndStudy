module DW03_lfsr_dcnto_inst_struct( data, count_to,
								load, cen,
								clk, reset, 
								count,
								tercnt );
								
								

input [5 : 0] data;
input [5 : 0] count_to;
input load;
input cen;
input clk;
input reset;
output [5 : 0] count;
output tercnt;

//wire [5 : 0] count;
//wire tercnt;

wire next;


//declarare porti logice


NOT nxor(.A(count[0]),.O(next));



// declarare comparator 4 biti
comparator_6  compar1(.data(count_to),.count(count),.out(tercnt));


// wire[5:0] count;
// wire tercnt;

//fire data
wire data_0 = data[0];
wire data_1 = data[1];
wire data_2 = data[2];
wire data_3 = data[3];
wire data_4 = data[3];
wire data_5 = data[3];

//fire clock
wire ck;
AND enable(.A(clk),.B(cen),.O(ck));

// declarare fire primul numataror
wire in0;// wire out0;
wire in1; //wire out1;
wire in2; //wire out2;
wire in3; //wire out3;
wire in4;// wire out4;
wire in5;// wire out5;

//wire[5:0] out = count[5:0];
// declarare mux-uri

MUX_2_1 mux0(.in1(next),.in2(data[5]),.sel(load),.out(in0));
MUX_2_1 mux1(.in1(count[5]),.in2(data[4]),.sel(load),.out(in1));
MUX_2_1 mux2(.in1(count[4]),.in2(data[3]),;/sel(load),.out(in2));
MUX_2_1 mux3(.in1(count[3]),.in2(data[2]),.sel(load),.out(in3));
MUX_2_1 mux4(.in1(count[2]),.in2(data[1]),.sel(load),.out(in4));
MUX_2_1 mux5(.in1(count[1]),.in2(data[0]),.sel(load),.out(in5));


//bistabile numarator pe 4 biti
bistabil b0(.d(in0),.clk(ck),.reset(reset), .q(count[5]));
bistabil b1(.d(in1),.clk(ck),.reset(reset), .q(count[4]));
bistabil b2(.d(in2),.clk(ck),.reset(reset), .q(count[3]));
bistabil b3(.d(in3),.clk(ck),.reset(reset), .q(count[2]));
bistabil b4(.d(in4),.clk(ck),.reset(reset), .q(count[1]));
bistabil b5(.d(in5),.clk(ck),.reset(reset), .q(count[0]));

endmodule