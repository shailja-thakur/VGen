// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// The new bits are equal to be zero.
wire x0, x1, x2, x3, x4, x5, x6, x7;
assign x0 = in[0] & in[1];
assign x1 = in[2] & in[3];
assign x2 = in[1] & in[2] & in[3];
assign x3 = in[2] & in[3];
assign x4 = in[1] | in[2] & in[3] & in[1];
assign x5 = in[1] ^ in[2] ^ in[3] ^ in[1] ^ in[2];
assign x6 = {x5, x4, x3, x2, x1, x0};
assign x7 = {x5, x4, x3, x2,endmodule
