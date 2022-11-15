// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out. 

wire [4:0] in_a, in_b;

assign out[4:0] = ( a[sel] ? in_a : b[sel] ? in_b : a[sel] && b[sel] ? in_a : in_b );

endmodule
