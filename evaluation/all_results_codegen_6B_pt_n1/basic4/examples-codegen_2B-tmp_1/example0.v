// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.


assign out = sel ? b : a;

// If sel is true, then assign b to output. 
// If sel is false, then assign a to output.
endmodule
