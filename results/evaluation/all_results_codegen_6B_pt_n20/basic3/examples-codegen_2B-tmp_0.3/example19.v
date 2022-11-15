// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
  if (in[0] == 0)
    pos = 0;
  else if (in[1] == 0)
    pos = 1;
  else if (in[2] == 0)
    pos = 2;
  else if (in[3] == 0)
    pos = 3;
  else if (in[4] == 0)
    pos = 4;
  else if (in[5] == 0)
    pos = 5;
  else if (in[6] == 0)
    pos = 6;
  else if (in[7] == 0)
    pos = 7;
  else
    pos = 0;
  pos = pos + 1;
  pos = pos & 7;
  pos = pos << 2;
  pos = pos | (in[0] >> 1);
end
endmodule
