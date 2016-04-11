// Test pentru numaratorul de 8 biti

module test_counter();
reg        clk;
reg[7:0]   data;
reg        load;
wire[7:0]  out;
wire       cout;

// ***************************
counter DUT
    (.out(out),
     .cout(cout),
     .data(data),
     .load(load),
     .clk(clk)
    );
// ***************************

always #10 clk = !clk;

integer i;
initial // Clock generator
  begin
    clk <= 0;
    load <= 0;
    data <= 0;
    load <= 0;
    for (i=1;i<=2;i=i+1)
      @(posedge clk);
    load <= 1;
    for (i=1;i<=5;i=i+1)
      @(posedge clk);
    load <= 0;
    for (i=1;i<=10;i=i+1)
      @(posedge clk);
    data <= 8'hf0;
    load <= 1;
    for (i=1;i<=2;i=i+1)
      @(posedge clk);
    load <= 0;
  end

endmodule    
