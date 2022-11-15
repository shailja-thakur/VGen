// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge reset)
  reg[0] <= in[sel];
  if (sel == 1)
    pos <= reg[0];
endmodule
