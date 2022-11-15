// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire M,S;

// chain it together
mux2x1 mux( M,S, in[2],in[1], in[0] );
// S=1(in[0]) AND M=1(in[2]), OR
// S=0(in[2]) AND M=1(in[1]), OR
// S=1(in[1]) AND M=1(in[0]), OR
// S=1(in[2]) AND M=0(in[0]), OR
// S=0(in[1]) AND M=0(in[0]), OR
// S=0(in[2]) AND M=0(in[1]), OR
// S=0(in[1]) AND M=0(in[0]), OR
// S=0(in[2]) AND M=0(in[1]), OR
// Sendmodule
