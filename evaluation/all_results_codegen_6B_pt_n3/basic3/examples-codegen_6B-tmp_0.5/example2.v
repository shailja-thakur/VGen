// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
  {
    pos = (in[0] & in[1] & in[2] & in[3] & in[4] & in[5] & in[6] & in[7] & in[8] & in[9] & in[10] & in[11] & in[12] & in[13] & in[14]);
  }
endmodule
