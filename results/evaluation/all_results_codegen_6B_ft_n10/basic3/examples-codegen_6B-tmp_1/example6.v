// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
case(in)
	0: pos = 0;
	(1,2,3): pos = 2;
	default: pos = 0;
endcase
endmodule
