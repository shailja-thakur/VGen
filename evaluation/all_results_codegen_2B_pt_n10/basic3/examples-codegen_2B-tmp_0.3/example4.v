// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[1] ? b[1] : b[0];

// This is a 3-bit priority decoder. If none of the input bits are high, output is zero.
module priority_decoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[1] ? b[1] : b[0];

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_invert( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[1] ? b[0] : b[1];

// This is a 3-bitendmodule
