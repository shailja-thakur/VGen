// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk ) // clk_i is active high
void priority_encoder()
{ 
  if ( 0 && in[0] & in[1] )
  { 
    pos = 0;
  } else {
    pos = 1;
  }
}

endmodule
