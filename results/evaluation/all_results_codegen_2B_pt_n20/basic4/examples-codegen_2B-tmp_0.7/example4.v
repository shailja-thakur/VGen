// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a sequence of rotations. 
module seq( 
input [5:0] a, 
input [6:0] b, 
output [5:0] c );

parameter int N=6;

// Rotate a by increments of N.
module rotate( 
input [5:0] a, 
input [5:0] b, 
output [5:0] c,
input [N:0] idx );

// If idx = 0, output becomes b.
// If idx = 1, output becomes a.
// If idx = 2, output becomes c.

module invert( 
input [5:0] a, 
output [5:0] b,
input [5:0] c );

module
always @*
begin
  // Generate a random number.
end
endmodule
