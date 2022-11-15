// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign either a or b to out.

wire w1, w2, w3;

mux mux2;
mux mux3;
mux mux4;

mux2 a_mux2;
mux2 b_mux2;
mux3 a_mux3;
mux3 b_mux3;
mux4 a_mux4;
mux4 b_mux4;

always @( posedge clk )
{
  if ( sel )
  {
     a_mux2 = mux2( a, w1, w2 );
     b_mux2 = mux2( b, w2, w1 );
     a_mux3 = mux3( a, w3, w1 );
     b_mux3endmodule
