// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  if (sel)
    pos <= in[2];
end

module priority_encoder_test(
input [2:0] in,
output reg [1:0] pos,
output reg [1:0] sel );
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  if (sel)
    pos <= in[2];
  else
    sel <= in[2];
end

module priority_encoder_test2(
input [2:0] in,
output reg [1:0] pos,
output reg [1:0] sel );
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  if (sel)
    pos <= inendmodule
