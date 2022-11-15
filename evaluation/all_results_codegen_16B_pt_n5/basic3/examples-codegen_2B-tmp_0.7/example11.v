// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign b to out
always @(posedge cin_clk or posedge clk)
begin
  out = (in[1] << 4) | (in[0] & 0x0F);
  out = (in[1] << 4) | (in[0] & 0x0F);
  out = (in[1] << 4) | (in[0] & 0x0F);
  out = (in[1] << 4) | (in[0] & 0x0F);
  out = (in[1] << 4) | (in[0] & 0x0F);
  out = (in[1] << 4) | (in[0] & 0x0F);
  out = (in[1] << 4) | (in[0] & 0x0F);
  end
endmodule
