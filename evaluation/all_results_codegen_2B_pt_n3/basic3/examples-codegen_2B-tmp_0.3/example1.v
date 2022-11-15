// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[0] << 1) | in[1];
// When sel=0, assign b to out
assign pos = (in[0] << 2) | in[1];
// When sel=1, assign b to out
assign pos = (in[0] << 3) | in[1];
// When sel=0, assign b to out
assign pos = (in[0] << 4) | in[1];
// When sel=1, assign b to out
assign pos = (in[0] << 5) | in[1];
// When sel=0, assign b to out
assign pos = (in[0] << 6) | in[1];
// When sel=1, assign b to out
assign pos = (in[0] << 7) | in[1];
// Whenendmodule
