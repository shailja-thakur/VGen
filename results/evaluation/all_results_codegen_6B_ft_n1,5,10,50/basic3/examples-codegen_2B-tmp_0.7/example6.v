// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = (
  ( ~in[0] & in[1] ) >> 3 );
// When sel=0, assign b to pos
assign out = (
  ( in[0] & in[1] ) >> 3 & pos );
);
// This is a dual-input, dual-output decoder.
module dual_input_decoder(
input [3:0] in1,
input [3:0] in2,
output reg [3:0] out1,
output reg [3:0] out2 );
// When sel=1, assign b to out1
assign out1 = (
  ( ~in1[2] & in1[1] ) >> 3 );
// When sel=1, assign b to out2
assign out2 = (
  ( in1[2] & in1[1] )endmodule
