// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[0] << 6) | (in[1]);

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [3:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[0] << 7) | (in[1] << 2) | (in[2]);

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [4:0] in,
output reg [4:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[0] << 8) | (in[1] << 4)endmodule
