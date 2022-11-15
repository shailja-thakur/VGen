// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign the result of a xor b to out.

// Design a directly mux.
module dmux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out.
// When sel=1, assign b to out.
// When sel=2, assign the result of a xor b to out.

// Design a 4-to-1 multiplexer.
module mux4(
input [4:0] a[4:0], b[4:0],
input sel[4:0],
output [4:0] out );
// When sel=0, assign a to out[0].
// When sel=1, assign b to out[1].
// When sel=2,endmodule
