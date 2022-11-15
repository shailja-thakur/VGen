// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or negedge rst)
  if (sel == 1)
  begin
    if (in[0] == 1)
      pos[0] = 1;
    if (in[1] == 1)
      pos[1] = 1;
    if (in[2] == 1)
      pos[2] = 1;
  end
endmodule
