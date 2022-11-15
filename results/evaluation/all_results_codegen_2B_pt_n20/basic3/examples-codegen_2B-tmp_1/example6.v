// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = b[0] & in[0], b[0] = ~b[0];

module pddr_outclk(
input [4:0] out,
output reg clk );

module pdcd_outseq1_u(
output reg seq1_out, 
input [16:0] count, 
input [4:0] in );  

module pdcd_outseq2_u(
output reg seq2_out, 
input [16:0] count, 
input [4:0] in );  

module setout_3bit(
input [3:0] value, 
output [3:0] out );

module hexprint(
output [4:0] hexout,
input [4:0] ch );

# 5 a test program

module blcgate(endmodule
