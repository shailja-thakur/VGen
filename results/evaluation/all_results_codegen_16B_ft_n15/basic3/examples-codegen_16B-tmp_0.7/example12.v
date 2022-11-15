// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or negedge in[0])
	if (in[0] == 1'b0)
	assign pos[1] = 1'b0;
	else
	assign pos[0] = 1'b1;
endmodule
