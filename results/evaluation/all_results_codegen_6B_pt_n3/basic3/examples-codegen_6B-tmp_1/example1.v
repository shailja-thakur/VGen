// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) c(in[0])  priority_encoder.c <= b'000';
always @(*) c(in[1])  priority_encoder.c <= b'001';
always @(*) c(in[2])  priority_encoder.c <= b'010';
always @(*) c(in[3])  priority_encoder.c <= b'011';
always @(*) c(in[4])  priority_encoder.c <= b'100';
always @(*) c(in[5])  priority_encoder.c <= b'101';
always @(*) c(in[6])  priority_encoder.c <= b'110';
always @(*) c(in[7])  priority_encoder.c <= b'111';
always @(*) #5 priority_encoder.c <= b'00endmodule
