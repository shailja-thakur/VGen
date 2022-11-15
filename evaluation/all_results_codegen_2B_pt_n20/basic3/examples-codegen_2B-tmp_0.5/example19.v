// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign out = (in[0] << 2) | (in[1] << 1) | (pos[1] << 0); 
// When sel=1, assign c to out
assign out = (pos[0] << 1) | (in[0] << 0); 
// When sel=0, assign b to out
assign out = (pos[0] << 2) | (in[1] << 1) | (pos[1] << 0); 
// When sel=0, assign c to out
assign out = (pos[0] << 1) | (in[0] << 0); 
);

// This is a 7-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [7:0] in,
output reg [7:0] out );endmodule
