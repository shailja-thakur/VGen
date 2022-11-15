// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = ( in[2] << 1 ) | ( in[1] >> 7 );
// When sel=0, assign b to out
assign pos = ( in[0] >> 1 ) | ( in[1] << 7 );
)
endmodule
