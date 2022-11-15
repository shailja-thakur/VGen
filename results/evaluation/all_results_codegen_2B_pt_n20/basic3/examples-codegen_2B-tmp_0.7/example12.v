// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = (in & (1 << 1)) >> 1; 
// When sel=2, assign b to out
assign pos = (in & (1 << 2)) >> 2; 
// When sel=3, assign b to out
assign pos = (in & (1 << 3)) >> 3; 
// When sel=4, assign b to out
assign pos = (in & (1 << 4)) >> 4; 
// When sel=5, assign b to out
assign pos = (in & (1 << 5)) >> 5; 
// When sel=6, assign b to out
assign pos = (in & (1 << 6)) >> 6; 
// When sel=7, assign b to out
assign pos = (in & (1 << 7)) >> 7; 
// This is a 3-bit priority encendmodule
