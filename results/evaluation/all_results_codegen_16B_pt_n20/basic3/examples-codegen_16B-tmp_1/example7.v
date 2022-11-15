// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
#define PRIORITY_SELECT logical = in[0]^in[1];
#define WRITE_OR_ZERO priority_encoder.pos = sel ? in[1] : 0;
endmodule
