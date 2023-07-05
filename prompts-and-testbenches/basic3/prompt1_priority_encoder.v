// This is a 3-bit priority encoder. It outputs the position of the first high bit.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 