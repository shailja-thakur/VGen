// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[0] << 4) | (in[1] << 2) | ((in[0] << 2) & 0x4) | (in[1] & 0x3);
assign out = (pos >> 2) & 0x1;
endmodule
