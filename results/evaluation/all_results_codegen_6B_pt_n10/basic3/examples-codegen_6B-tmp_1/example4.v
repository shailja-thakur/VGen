// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
extern priority_encoder priority_encoder_sel (
input [1:0] lsel,
input logic [2:0] sel,
output reg [2:0] out );
// Mask of sel<4
`
endmodule
