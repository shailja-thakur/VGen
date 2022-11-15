// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign 0 to out.
// When sel=3, assign 1 to out.

always @( posedge sel )
// Make sure the result is written to the output port once.
assign out[0:4] = {a[0:4], b[0:4], 0, 1};
endmodule
