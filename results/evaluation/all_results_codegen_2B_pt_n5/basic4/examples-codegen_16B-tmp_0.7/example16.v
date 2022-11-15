// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// a and b are 4 bits, so sel must be 0 or 1.
assign out = sel ? b : a;	
endmodule
