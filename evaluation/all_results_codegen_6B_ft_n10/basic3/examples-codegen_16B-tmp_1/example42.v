// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// Example: in=3=100 => pos=10 -> out = 011
assign pos = (in && 1'd1);
endmodule
