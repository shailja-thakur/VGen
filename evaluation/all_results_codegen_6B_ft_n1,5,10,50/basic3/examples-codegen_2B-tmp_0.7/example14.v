// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = { 
  [0] <= (in[0] | (in[1] << 1)) ? 0 : in[1],
  [1] <= (in[0] | (in[1] << 1)) ? 0 : in[0],
  [2] <= (in[0] | (in[1] << 1)) ? 0 : 1,
  [3] <= (in[0] | (in[1] << 1)) ? 0 : 2,
  [4] <= (in[0] | (in[1] << 1)) ? 0 : 3,
  [5] <= (in[0] | (in[1] << 1)) ? 0 : 4,
  [6] <= (in[0] | (in[1] << 1)) ? 0 : 5,
  [7] <= (in[0] | (in[endmodule
