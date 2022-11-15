// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire sel = 0;
always @ ( posedge clk or (not in) )
  if (sel)
    pos <= in[in[0]];
  else
    pos <= 0;
endmodule
