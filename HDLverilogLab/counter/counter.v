// Numarator de 8 biti

module counter(out, cout, data, load, clk);
output[7:0]  out;
output       cout;
input[7:0]   data;
input        load;
input        clk;

reg[7:0]     out;

always @(posedge clk) 
  if (load) out <= data; else
            out <= out + 1;

assign cout = &out;

endmodule

