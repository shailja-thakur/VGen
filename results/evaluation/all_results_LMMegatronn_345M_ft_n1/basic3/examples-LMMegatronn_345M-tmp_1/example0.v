// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in)
if(in[0])
	pos[0] = in[1];
	else
	pos[0] = sel? din1: (in[0] & in[2]);
assign pos[1] = in[2] & ~sel;
assign pos[2] = ~sel;
endmodule
