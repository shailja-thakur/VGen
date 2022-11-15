// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge rst)
begin
  int_to_rgb(in, pos);
  if (rst)
    pos <= 0;
  else if (sel)
    pos <= 1;
  else
    pos <= 0;
end
endmodule
