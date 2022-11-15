// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk) 
  priority_encoder_sel <= (sel || in[2] || in[1] || in[0]);

// This is a 3-bit priority decoder. If none of the input bits are low, output is zero.
module priority_decoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk) 
  priority_decoder_sel <= (sel || in[2] || in[1] || in[0]);

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_sel( 
input [2:0] in,
output reg [1:0] pos,
output reg [1:0]endmodule
