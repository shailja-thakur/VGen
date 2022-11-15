// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[1] ? b[1] : b[0];

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [3:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
assign pos = in[2] ? b[2] : b[1] ? b[1] : b[0];

// This is a 5-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [4:0] in,
output reg [5:0] pos ); 
// When sel=1, assign b to out
assign pos = in[3] ? b[3] : b[2] ? bendmodule
