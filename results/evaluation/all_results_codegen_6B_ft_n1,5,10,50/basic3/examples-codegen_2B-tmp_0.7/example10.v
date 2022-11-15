// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[1:0] = (pos[1:0] & ~in) | (in << pos[1:0]) | (pos[1:0] & in); 
// If sel = 0, assign b to out
assign pos[1:0] = (pos[1:0] & ~in) | (in << pos[1:0]) | (pos[1:0] & ~in); 

module mux_adder(
  input [5:0] a, 
  input [5:0] b, 
  output [5:0] res);

assign res[5:0] = a[5:0] + b[5:0];
endmodule
