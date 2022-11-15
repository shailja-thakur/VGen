// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = 
  ( ( in[0] & 0x1 ) << 0 ) |
  ( ( in[1] & 0x1 ) << 1 ) |
  ( ( in[2] & 0x1 ) << 2 ) |
  ( ( in[3] & 0x1 ) << 3 ) |
  ( ( in[4] & 0x1 ) << 4 ) |
  ( ( in[5] & 0x1 ) << 5 ) |
  ( ( in[6] & 0x1 ) << 6 ) |
  ( ( in[7] & 0x1 ) << 7 );
// When sel=0, assign b to out
assign pos = 
  ( ( in[0] & 0x2 ) << 0 ) |
  ( ( in[1] & 0x2 ) << 1 ) |
  ( ( in[2]endmodule
