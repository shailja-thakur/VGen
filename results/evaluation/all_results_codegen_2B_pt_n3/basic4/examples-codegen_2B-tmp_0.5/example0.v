// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a and b to out.

always @(*) 
void main()
{
  // The multiplexer assigns a to out when sel=0.
  out[0] = a;

  // The multiplexer assigns b to out when sel=1.
  out[1] = b;

  // The multiplexer assigns a and b to out when sel=2.
  out[2] = a;
  out[3] = b;
}
endmodule
