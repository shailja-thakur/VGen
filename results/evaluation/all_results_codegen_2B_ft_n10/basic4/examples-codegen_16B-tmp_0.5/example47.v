// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// for each bit position, if sel is 0, then assign a to the output
// for each bit position, if sel is 1, then assign b to the output
endmodule
