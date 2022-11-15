// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (* begin
	casex (in)
	// The codes are listed in a vector parallel to the if statement
	// The casex statement is really an ALT statement.
	4'bxxxx: pos=0;
	4'b0000: pos=0;
	4'b0001: pos=1;
	4'b0010: pos=0;
	4'b0011: pos=2;
	4'b0100: pos=0;
	4'b0101: pos=1;
	4'b0110: pos=0;
	4'b0111: pos=2;
	4'b1000: pos=0;
	4'b1001: pos=1;
	4'b1010: pos=0;
	4'b1011: pos=2;
	4'b1100: pos=0end
endmodule
