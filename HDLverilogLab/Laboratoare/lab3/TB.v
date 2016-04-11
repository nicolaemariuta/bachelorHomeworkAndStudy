

module TB (Ck,D, Reset);

output Ck;
output D;
output Reset;

reg Ck;
reg D;
reg Reset;


initial
begin   
	 Reset = 0;
     Ck = 0;
     D  = 0;
 #5  D  = 1;
 #30 D  = 0;
 #2  D  = 1;
 #8  D  = 0;
 #30 Reset = 1;
 end
 
 always  #10 Ck <= ~Ck;

endmodule

