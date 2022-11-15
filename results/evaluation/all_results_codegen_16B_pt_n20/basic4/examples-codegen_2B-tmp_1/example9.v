// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
assign out = sel ? b : a; // De Morgan's Law :: assign b = !sel & !sel & a or sel = !sel &!sel & b
// In this case, actually first writing the sel to output and then assigning output to a or b directly.
endmodule
