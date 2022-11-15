// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// out can have any value.
assign out = sel ? b : a;
// Keep sel and b in the same bit width,
// which allows a and b to have any integer value.

endmodule
