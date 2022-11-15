// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
	assign out = sel ? b : a; // in case sel is 0, 0, 1, or 1 assume 'out' should be b if sel is 0, or 'out' should be a if sel is 1. If sel is x assume 'out' should be 0. 
endmodule
