// This is a 3-bit priority encoder. It outputs the position of the first high bit.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// If none of the input bits are high (i.e., input is zero), output zero.
// assign the position of the highest bit of in to pos