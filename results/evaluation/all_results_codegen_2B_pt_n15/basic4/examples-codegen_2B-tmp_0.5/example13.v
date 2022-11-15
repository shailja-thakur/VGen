// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign 0 to out.
// When sel=3, assign 1 to out.

reg [3:0] v;

always @( posedge clk )
  if (sel == 0)
    v = a;
  else if (sel == 1)
    v = b;
  else if (sel == 2)
    v = 0;
  else if (sel == 3)
    v = 1;
  else
    v = 0;
  else
    v = 0;

endmodule
