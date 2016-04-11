// Example that shows how to apply pin location for
// design targeting altera devices.

module adder(cout, sum, a, b, cin);

parameter size = 1;  /* declare a parameter. default required */
output cout;
output [size-1:0] sum; 	 // sum uses the size parameter
input cin;
input [size-1:0] a, b;  // 'a' and 'b' use the size parameter

assign {cout, sum} = a + b + cin;

endmodule

module adder8(cout, sum, a, b, cin);

output cout /* synthesis altera_chip_pin_lc="adder8@159" */; 

output [7: 0] sum /* synthesis altera_chip_pin_lc="@17,@166,@191,@152,@15,@148,@147,@149" */;

input [7: 0] a /* synthesis altera_chip_pin_lc="adder8@194,adder8@177,adder8@70,adder8@96,adder8@109,adder8@6,adder8@174,adder8@204" */;

input [7:0]  b;
input cin;

adder my_adder (cout, sum, a, b, cin);
defparam my_adder.size = 8;

endmodule
