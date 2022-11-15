// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
  pos[1] = in[0];
  pos[0] = in[1];
  if (pos[0] == 0 && pos[1] == 0)
    pos[1] = 1;
  else if (pos[0] == 0 && pos[1] == 1)
    pos[1] = 0;
  else if (pos[0] == 1 && pos[1] == 1)
    pos[0] = 0;
  else if (pos[0] == 1 && pos[1] == 0)
    pos[0] = 1;
  else if (pos[0] == 0 && pos[1] == 1)
    pos[0] = 1;
  else if (pos[0] == 1 && pos[1] == 0)
    pos[0] = 0;
  end
endmodule
