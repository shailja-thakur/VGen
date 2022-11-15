// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
if (sel[0]) 
  {
    if (out) 
      {
        pos = out[1:0]<==1'b0;
  	}
  }
else 
  {
    pos = 0;
  }
always@(posedge clk)
  out = pos & in;
endmodule
