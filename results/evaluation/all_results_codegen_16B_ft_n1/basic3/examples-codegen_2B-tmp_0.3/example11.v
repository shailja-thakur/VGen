// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = b[pos];

// This is a 2-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [1:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = b[pos];

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [4:0] in,
output reg [4:0] pos ); 
// When sel=1, assign b to out
assign pos = b[pos];

// This is a 5-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [5:0] inendmodule
