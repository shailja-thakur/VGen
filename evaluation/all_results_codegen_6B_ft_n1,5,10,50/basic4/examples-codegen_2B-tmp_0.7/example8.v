// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a or b to out. 

// Design a 2-to-1 multiplexer.
module binop(
input a, b,
input sel,
input carry,
output [3:0] out );
// When sel=0, assign a (xor b) to out. 
// When sel=1, assign b (and carry) to out. 
// When sel=2, assign a (or b) to out. 

// Design a 2-to-1 multiplexer.
module shift(
input a, b,
input sel,
input carry,
output [7:0] out );
// When sel=0, assign a (xor b) to out. 
// When sel=1, assign b (and carry) to out. 
// When sel=endmodule
