// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel) out = b;

// Priority encoder
always @(posedge clk)
  if (sel) priority_encoder_pos = (priority_encoder_pos + 1) & 3;

always @(posedge clk)
  if (sel) priority_encoder_in = (priority_encoder_in << 1) | in[1];

always @(posedge clk)
  if (sel) priority_encoder_sel = 1;

//
endmodule
