// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk)
  if (sel)
    out <= b;
  else 
    out <= a;
// The multiplexer also needs to be able to accept a reset signal.
always @(posedge clk)
  if (sel)
    a <= b;
  else 
    a <= ~b;

endmodule
