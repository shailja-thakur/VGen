// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// For this implementation, sel will never be 1.
// The output should be an X if sel is X.
assign out = sel ? b : a;
endmodule
