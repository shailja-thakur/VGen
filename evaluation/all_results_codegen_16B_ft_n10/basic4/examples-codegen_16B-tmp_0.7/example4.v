// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// The value of sel must be 1 if b is nonzero.
assign out = sel & b | ~sel & a;
endmodule
