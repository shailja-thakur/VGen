// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = ( in & 1 ) ? 1 : 0;
// When sel=0, assign b to out
assign pos = ( in & 2 ) ? 1 : 0;
// When sel=1, assign b to out
assign pos = ( in & 4 ) ? 1 : 0;
// When sel=0, assign b to out
assign pos = ( in & 8 ) ? 1 : 0;
// When sel=1, assign b to out
assign pos = ( in & 16 ) ? 1 : 0;
// When sel=0, assign b to out
assign pos = ( in & 32 ) ? 1 : 0;
// When sel=1, assign b to out
assign pos = ( in & 64 ) ? 1 : 0;
// When sel=0, assign b to out
assign pos = ( in & 128 ) ? 1endmodule
