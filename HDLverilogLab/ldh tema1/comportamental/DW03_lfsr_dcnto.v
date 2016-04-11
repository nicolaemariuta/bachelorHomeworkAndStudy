module DW03_lfsr_dcnto_inst( data, count_to,
								load, cen,
								clk, reset, 
								count,
								tercnt );


parameter width = 4;
input [width-1 : 0] data;
input [width-1 : 0] count_to;
input load;
input cen;
input clk;
input reset;
output [width-1 : 0] count;
output tercnt;


reg[width-1:0] count;
reg tercnt;


// functia de asociere a polinomului cu latimea LFSR
function integer lfsrPoly (input integer width);
begin
  case (width)
  1: lfsrPoly =  1'b1;
  2: lfsrPoly =  2'b11;
  3: lfsrPoly =  3'b011;
  4: lfsrPoly =  4'b0011;
  5: lfsrPoly =  5'b00101;
  6: lfsrPoly =  6'b000001;
  7: lfsrPoly =  7'b0000011;
  8: lfsrPoly =  8'b01100011;
  9: lfsrPoly =  9'b000010001;
 10: lfsrPoly = 10'b0000001001;
 11: lfsrPoly = 11'b00000000101;
 12: lfsrPoly = 12'b000010011001;
 13: lfsrPoly = 13'b0000000011011;
 14: lfsrPoly = 14'b01100000000011;
 15: lfsrPoly = 15'b000000000000011;
 16: lfsrPoly = 16'b0000000000101101;
 17: lfsrPoly = 17'b00000000000001001;
 18: lfsrPoly = 18'b000000000010000001;
 19: lfsrPoly = 19'b0000000000001100011;
 20: lfsrPoly = 20'b00000000000000001001;
 21: lfsrPoly = 21'b000000000000000000101;
 22: lfsrPoly = 22'b0000000000000000000011;
 23: lfsrPoly = 23'b00000000000000000100001;
 24: lfsrPoly = 24'b000000000000000000011011;
 25: lfsrPoly = 25'b0000000000000000000001001;
 26: lfsrPoly = 26'b00000000000000000110000011;
 27: lfsrPoly = 27'b000000000000000000110000011;
 28: lfsrPoly = 28'b0000000000000000000000001001;
 29: lfsrPoly = 29'b00000000000000000000000000101;
 30: lfsrPoly = 30'b000000000000011000000000000011;
 31: lfsrPoly = 31'b0000000000000000000000000001001;
 32: lfsrPoly = 32'b00011000000000000000000000000011;
 33: lfsrPoly = 33'b000000000000000000010000000000001;
 34: lfsrPoly = 34'b0000000000000000001100000000000011;
 35: lfsrPoly = 35'b00000000000000000000000000000000101;
 36: lfsrPoly = 36'b000000000000000000000000100000000001;
 37: lfsrPoly = 37'b0000000000000000000000010100000000101;
 38: lfsrPoly = 38'b00000000000000000000000000000001100011;
 39: lfsrPoly = 39'b000000000000000000000000000000000010001;
 40: lfsrPoly = 40'b0000000000000000000101000000000000000101;
 41: lfsrPoly = 41'b00000000000000000000000000000000000001001;
 42: lfsrPoly = 42'b000000000000000001100000000000000000000011;
 43: lfsrPoly = 43'b0000000000000000000000000000000000001100011;
 44: lfsrPoly = 44'b00000000000000001100000000000000000000000011;
 45: lfsrPoly = 45'b000000000000000000000000000000000000000011011;
 46: lfsrPoly = 46'b0000000000000000000000000110000000000000000011;
 47: lfsrPoly = 47'b00000000000000000000000000000000000000000100001;
 48: lfsrPoly = 48'b000000000000000000011000000000000000000000000011;
 49: lfsrPoly = 49'b0000000000000000000000000000000000000001000000001;
 50: lfsrPoly = 50'b00000000000000000000001100000000000000000000000011;
  default : lfsrPoly = 10'b0000001001;
  endcase
end
endfunction


wire[width-1:0]	polynom;


// asociaza dimensiunii polinomul caracteristic
assign polynom	= lfsrPoly(width);

//initial, iesirea este egala cu data 
initial 
begin
   count = data;
end


//setare load
//always @(negedge load) begin
	//count <= data;
	//end


// registru de deplasare cu MSB format din XOR pe vectori
always @(posedge clk or negedge reset) begin

	if (~reset) begin
				tercnt <= 0;
				count <= 'b0; 
			end
			else begin


	if(cen)
		begin
			if(~load)
			begin
			count <= data;
			end
		
		
		else	 begin
				if({~^(count & polynom), count[width-1:1]} == count_to)
				begin
					tercnt <=1;
					count <= {~^(count & polynom), count[width-1:1]};
				end
				else
				if(~tercnt)
				begin
					tercnt <=0;
					count <= {~^(count & polynom), count[width-1:1]};
				end 
				else begin
					tercnt <=0;
					count <= {~^(count & polynom), count[width-1:1]};
				end
				
		end
		
			
		end		
	else begin
			if(~load)
			begin
			count <= data;
			end
			else
			begin
			tercnt <= 0;
			count <= count;
			end
			
		end
		end
			
 	
end


endmodule


