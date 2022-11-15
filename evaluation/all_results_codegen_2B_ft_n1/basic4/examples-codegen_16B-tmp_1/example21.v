// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// wb switches in between the two. 
assign #2 out = sel ? b : a; // delay 2ns, minimum suggested by UofT
endmodule
