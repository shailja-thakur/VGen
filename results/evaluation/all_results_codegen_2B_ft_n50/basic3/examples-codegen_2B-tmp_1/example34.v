// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in) 
	begin
	// MSBit first
	casex (in)
	2'bxx: 	pos = 2'bxx;
	2'b10, 2'b11, 2'b01, 2'b00: begin
	casex (in)	
	2'b10, 2'b11, 2'b01, 2'b00: 
	pos = 2'bxx;
	1'b1: 	pos = 2'b10; 
	1'b0: 	pos = 2'b11;
	default: pos = 2'b01;
	endcase
	end
	2'b00, 2'b01, 2'b11, 2'b10: begin
	casex (in)	
	2'b00, 2'b01, 2'b11,end
endmodule
