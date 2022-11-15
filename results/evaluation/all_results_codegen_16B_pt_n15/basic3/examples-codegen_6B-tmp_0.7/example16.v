// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or negedge rst)
  if(sel == 0)
  {
    pos = 0;
  }
  else if(sel == 1)
  {
    pos = (in[3] | (in[2] << 1) | (in[1] << 2) | (in[0] << 3));
  }
endmodule
