// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// sel is a 3-bit input, but you can
// think of it as a 4-bit input.
assign out = sel ? b : a;
endmodule
