// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  if (sel)
  begin
    if (in[0] == 1)
      pos = 1;
    else
    if (in[1] == 1)
      pos = 2;
    else
    if (in[2] == 1)
      pos = 3;
    else
    if (in[3] == 1)
      pos = 4;
    else
    if (in[4] == 1)
      pos = 5;
    else
    if (in[5] == 1)
      pos = 6;
    else
    if (in[6] == 1)
      pos = 7;
    else
    if (in[7] == 1)
      pos = 0;
    else
    if (in[8] == 1)
      pos = 1;
end
endmodule
