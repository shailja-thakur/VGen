// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=2, assign a to out
// When sel=3, do not affect out
always @(posedge sig ) begin
  if (sel == 1)
    pos <= 1;
  else if (sel == 2)
    pos <= 1;
  else
    pos <= 0;
end
endmodule
