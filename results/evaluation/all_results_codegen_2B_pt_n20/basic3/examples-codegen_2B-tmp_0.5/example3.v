// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[2:0] + 1;
// When sel=0, assign b to out
assign pos = in[2:0] + 1 - 16;
// When sel=1, assign b to out
assign pos = in[2:0] + 1 - 32;
// When sel=0, assign b to out
assign pos = in[2:0] + 1 - 48;
// When sel=1, assign b to out
assign pos = in[2:0] + 1 - 64;
// When sel=0, assign b to out
assign pos = in[2:0] + 1 - 80;
// When sel=1, assign b to out
assign pos = in[2:0] + 1 - 96;
// When sel=0, assign b to out
assign pos = in[endmodule
