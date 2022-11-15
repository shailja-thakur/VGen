// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign nothing to out.

// The following is an example of the use of the mux module.
// Suppose we want to multiplex the four input bits with the 
// two select bits, sel.
module mux_example(
input [4:0] a, b,
input sel,
output [4:0] out );
assign out = sel ? b : a;
endmodule
