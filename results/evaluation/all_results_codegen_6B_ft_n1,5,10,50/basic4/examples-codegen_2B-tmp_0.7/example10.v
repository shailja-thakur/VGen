// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 4-to-6 multiplexer.
module mux( 
input [4:0] a, b, c, d,
input sel,
output [6:0] out );
// When sel=0, assign a to out[4:2],
// when sel=1, assign b to out[4:2],
// when sel=2, assign c to out[4:2],
// when sel=3, assign d to out[4:2],
// when sel=4, assign a to out[5:3],
// when sel=5, assign b to out[5:3],
// when sel=6, assign c to out[5:3],
// when sel=7, assign d to out[5:3]
);


// Design a 3-to-6 multiplexerendmodule
