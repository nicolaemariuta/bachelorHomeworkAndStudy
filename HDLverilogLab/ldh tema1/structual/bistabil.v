//-----------------------------------------------------
// Bistabil reset asincron
// 
//-----------------------------------------------------
module bistabil (
d   , // Data Input
clk    , // Clock Input
reset  , // Reset input
q        // Q output
);
//-----------Input Ports---------------
input d, clk, reset ; 

//-----------Output Ports---------------
output q;

//------------Internal Variables--------
reg q;

//-------------Code Starts Here---------
always @ ( posedge clk or negedge reset)
if (~reset) begin
  q <= 1'b0;
end  else begin
  q <= d;
end

endmodule //End Of Module dff_sync_reset