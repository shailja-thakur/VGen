// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  if ( rst )
  {
    pos = 0;
  }
  else if ( in[2] && in[1] )
  {
    pos = 2;
  }
  else if ( in[0] )
  {
    pos = 1;
  }
  else
  {
    pos = 0;
  }
endmodule