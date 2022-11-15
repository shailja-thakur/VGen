// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = ( in & (1 << in[1:0] ) ) ? (in[1:0] + 1) : 0; 

// This is a 1-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_invert( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = ( in & (1 << in[1:0] ) ) ? (in[1:0] - 1) : 0; 

// This is a 1-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_invert_sel( 
input [2:0] in,
output reg [1:0] pos,
sel #[1:endmodule
