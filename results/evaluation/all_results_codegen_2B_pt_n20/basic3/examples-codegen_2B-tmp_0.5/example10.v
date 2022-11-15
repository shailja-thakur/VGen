// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign out = pos[1];

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_sel( 
input [2:0] in,
output reg [1:0] pos,
input [1:0] sel ); 

// When sel=1, assign b to out
assign out = pos[1];

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_sel_in( 
input [2:0] in,
output reg [1:0] pos,
input [1:0] sel,
input [2:0] in_ ); 
// When sel=1, assign b to out
assign out = pos[1];

// This isendmodule
