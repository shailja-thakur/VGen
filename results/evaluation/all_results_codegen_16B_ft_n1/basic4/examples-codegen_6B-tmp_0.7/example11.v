// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always@(posedge clk)
  out <= sel ? a : b;

// A 4-to-1 multiplexer
module mux4(
input [4:0] a, b, c, d,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign c to out.
// When sel=3, assign d to out.
always@(posedge clk)
  out <= sel ? a : (sel == 3 ? d : (sel == 2 ? c : b));

// A 2-to-1 multiplexer
module mux2(
input [2:0] a, b,
input sel,
output [2:0] out );
// Whenendmodule
