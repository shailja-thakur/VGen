// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire b;

always @(posedge clk)
  if (pos[2:0] == 3'b0000)
  {
    b = in[0];
  }
  else
  {
    b = in[1];
  }

always @(posedge clk)
  if (in[2] == 1)
  {
    if (pos[2:0] == 3'b0000)
    {
      pos[2:0] = 3'b0010;
    }
    else
    {
      pos[2:0] = 3'b0100;
    }
    pos[0] = b;
  }
  else
  {
    if (pos[2:0] == 3'b0000)
    {
      pos[2:0] = 3'b0100;
    }
    elseendmodule
