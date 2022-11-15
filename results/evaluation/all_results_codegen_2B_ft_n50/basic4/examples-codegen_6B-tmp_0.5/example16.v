// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk)
  out <=  a[sel];

// The multiplexer always outputs the value of the selected input.
always @(posedge clk)
  out <=  sel ? a[sel] : b[sel];

endmodule
