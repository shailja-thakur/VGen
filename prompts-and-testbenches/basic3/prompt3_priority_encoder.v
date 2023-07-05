// This is a 3-bit priority encoder. It outputs the position of the first high bit.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// If in==0, assign zero to pos
// If in[0] is high, assign 0 to pos
// If in[1] is high, assign 1 to pos
// If in[2] is high, assign 2 to pos