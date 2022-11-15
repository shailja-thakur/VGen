// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( in )
begin
	casex ( in )
	// Inputs 0 and 1 are encoded in 2 bits
	4'b0xxx: pos = 2'b00;	// Input 0
	4'b1xxx: pos = 2'b01;	// Input 1
	// Input 2 is encoded in 3 bits
	4'b2xxx: pos = 2'b10;	// Input 2
	// Input 3, 4, and 5 are encoded in 3 bits
	4'b3xxx, 4'b4xxx, 4'b5xxx: pos = 2'b11;
	// By default, return 000
	default: pos = 2'b00;
	endcase
end
endmodule
