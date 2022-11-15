// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = sel;
// When sel=0, assign a to out
assign a = ~in[0] & in[1];
// When sel=1, assign b to out
assign b = ~in[0] | in[1];
// When sel=0, assign a to out
assign a = ~in[0] & ~in[1];
// When sel=1, assign b to out
assign b = ~in[0] | ~in[1];
// When sel=0, assign a to out
assign a = ~in[0] & in[1];
// When sel=1, assign b to out
assign b = ~in[0] | in[1];
// When sel=0, assign a to out
assign a = ~in[0] & ~in[1];
endmodule
