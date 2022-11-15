// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = ( in[1] & pos[1] ) << 1 | in[0] & pos[0];

// Print the position from BCD.
assign out = ( pos[2:0] + 1 ) / 2;
endmodule
