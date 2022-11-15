// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = 
  ( ~(in[1] & in[0]) & 1 ) 
  | ( ~(in[1] & in[0]) & 2 ) 
  | ( ~(in[1] & in[0]) & 4 )
  | ( ~(in[1] & in[0]) & 8 )
  | ( ~(in[1] & in[0]) & 16 )
  | ( ~(in[1] & in[0]) & 32 )
  | ( ~(in[1] & in[0]) & 64 )
  | ( ~(in[1] & in[0]) & 128 );

assign out =
  ( ~(in[1] & in[0]) & 1 ) 
  | ( ~(in[1] & in[0]) & 2 ) 
  | ( ~(inendmodule
