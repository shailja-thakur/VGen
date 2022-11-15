// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
not(n2, sel);
and(n3, n2, a);
and(n4, n2, b);
or(out, n3, n4);
endmodule
