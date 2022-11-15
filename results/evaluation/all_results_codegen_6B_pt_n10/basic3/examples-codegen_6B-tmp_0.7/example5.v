// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  if (sel) pos = in;
// when clk=1, output is high if pos is high
always @(posedge clk and not rst)
  if (sel) pos = pos & in;
endmodule
