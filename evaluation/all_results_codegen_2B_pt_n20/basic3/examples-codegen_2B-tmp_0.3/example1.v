// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[2:0] ? 1 : 0;

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [3:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
assign pos = in[3:0] ? 3 : 0;

// This is a 5-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [4:0] in,
output reg [4:0] pos ); 
// When sel=1, assign b to out
assign pos = in[4:0] ? 4 : 0;

// This is a 6-bit priority encoder. If none of the input bits are highendmodule
