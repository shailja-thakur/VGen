// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[1] = in[2];
// When sel=2, assign b to out
assign pos[0] = ~in[2] & ~in[1];
// When sel=3, assign b to out
assign pos[0] = ~in[1] & ~in[0];
// When sel=4, assign b to out
assign pos[0] = ~in[0]; 
// When sel=5, assign b to out
assign pos[0] = in[0];
// When sel=6, assign b to out
assign pos[0] = ~in[0]; 
// When sel=7, assign b to out
assign pos[0] = in[1]; 
// When sel=8, assign b to out
assign pos[0] = ~in[1]; endmodule
