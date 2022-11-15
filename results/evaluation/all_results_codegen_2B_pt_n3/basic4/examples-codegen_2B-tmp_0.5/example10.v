// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a and b to out.

always @( posedge clk )
{
  if (sel == 0)
    out[0] = a;
  else if (sel == 1)
    out[0] = b;
  else
    out[0] = a & b;
}

// ------------------------------------------------

// Design a 4-to-1 multiplexer.
module mux2( 
input [4:0] a, b, c, d,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign c to out.
// When sel=3, assign d to out.

always @( posedge clk )
{
  endmodule
