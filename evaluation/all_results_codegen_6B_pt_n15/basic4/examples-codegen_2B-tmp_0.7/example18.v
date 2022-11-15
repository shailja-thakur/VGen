// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 2-to-2 multiplexer.
module mux2(
input [3:0] a, b,
input [3:0] c,
input sel,
output [3:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign c to out.

// Design a 4-to-2 multiplexer.
module mux4(
input [4:0] a, b,
input [4:0] c,
input [4:0] d,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign c to out. endmodule
