// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[1] | (in[0] << 1)) & 3;
// When sel=0, assign b to out
assign pos = (in[1] << 2) | (in[0] << 1) | (in[0] >> 1);

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [3:0] in,
output reg [2:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[2] | (in[1] << 1) | (in[0] << 2)) & 3;
// When sel=0, assign b to out
assign pos = (in[2] << 1) | (in[1] << 2) | (in[0endmodule
