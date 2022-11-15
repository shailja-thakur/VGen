// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
reg [3:0] a, b;
always @(posedge clk) begin
  if (sel==1)
    b <= in;
  else
    a <= in;
  if (a==3 || b==3)
    pos <= 3;
  else
    pos <= 0;
end
endmodule
