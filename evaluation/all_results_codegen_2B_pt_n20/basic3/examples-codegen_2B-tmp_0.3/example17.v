// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[0] ? 1 : 0;
// When sel=2, assign b to out
assign pos = in[1] ? 2 : 0;
// When sel=3, assign b to out
assign pos = in[2] ? 4 : 0;
// When sel=4, assign b to out
assign pos = in[3] ? 8 : 0;
// When sel=5, assign b to out
assign pos = in[4] ? 16 : 0;
// When sel=6, assign b to out
assign pos = in[5] ? 32 : 0;
// When sel=7, assign b to out
assign pos = in[6] ? 64 : 0;
// When sel=8, assign b to out
assign pos = in[7] ? 128 : 0;
// When selendmodule
