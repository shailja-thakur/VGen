// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a and b to out.

always @( posedge clk )
  if ( sel == 0 )
    out[3] = a;
  else if ( sel == 1 )
    out[3] = b;
  else
    out[3] = a, out[2] = b;
endmodule
