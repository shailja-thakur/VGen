// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[0] ? b[0] : b[1]; 

reg [3:0] b[3:0] = pos;

reg [3:0] b[0] = pos;
reg [3:0] b[1] = pos;

reg [3:0] b[2] = pos;

reg [3:0] b[3] = pos;

reg [3:0] b[4] = pos;

reg [3:0] b[5] = pos;

reg [3:0] b[6] = pos;

reg [3:0] b[7] = pos;

reg [3:0] b[8] = pos;

reg [3:0] b[9] = pos;

reg [3:0] b[10] = pos;endmodule
