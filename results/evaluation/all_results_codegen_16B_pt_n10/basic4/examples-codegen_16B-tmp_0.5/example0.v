// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign both a and b to out.
// When sel=3, do nothing.
assign out = sel ? b : a;

// Design a 2-to-1 multiplexer.
module mux2( 
input [2:0] a, b,
input sel,
output [2:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign both a and b to out.
// When sel=3, do nothing.
assign out = sel ? b : a;

// Design a 3-to-1 multiplexer.
module mux3( 
input [3:0] a, b,
input sel,
output [3:0] out );
endmodule
