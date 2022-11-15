// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The mux is a 4-to-1 multiplexer that chooses either a or b as its output.
	
	assign out = (sel) ? b : a;
endmodule