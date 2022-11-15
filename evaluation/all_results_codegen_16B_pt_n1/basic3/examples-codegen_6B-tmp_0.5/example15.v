// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  priority_encoder_sel <= in[1] & in[0];
always @(posedge clk)
  priority_encoder_sel <= in[0] & in[1];
always @(posedge clk)
  priority_encoder_sel <= 0;

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_4bit( 
input [3:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  priority_encoder_4bit_sel <= in[1] & in[0];
always @(posedge clk)
  priority_encoder_4bit_sel <= in[0] & in[endmodule
