// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in)
	casex (in)
	//first 6 input bits
	4'b1001: pos = 2'b00; 
	4'b1011: pos = 2'b01; 
	4'b0111: pos = 2'b10; 
	4'b0011: pos = 2'b11; 
	
	//most signifigant input bit
	4'b1100: pos = 2'b10;
	default: pos = 2'b00;
	endcase
endmodule
