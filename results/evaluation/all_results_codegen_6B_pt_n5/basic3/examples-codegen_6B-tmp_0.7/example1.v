// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or ~sel)
  out <= a;

module priority_encoder_sel( 
input [1:0] sel,
output reg [1:0] out );
// When sel=1, assign b to out
always @ (posedge clk or ~sel)
  out <= a;

module priority_encoder_sle( 
input [1:0] sel,
output reg [1:0] out );
// When sel=1, assign b to out
always @ (posedge clk_enable or ~sel)
  out <= a;

endmodule
