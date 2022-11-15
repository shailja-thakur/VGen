// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=0, assign 0 to out.

wire [4:0] c;

mux mux1(
input [4:0] a, b,
input sel,
output [4:0] out);
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=0, assign 0 to out.

mux mux2(
input [4:0] a, b,
input sel,
output [4:0] out);
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=0, assign 0 to out.

mux mux3(
input [4:0] a, b,
input sel,
output [4endmodule
