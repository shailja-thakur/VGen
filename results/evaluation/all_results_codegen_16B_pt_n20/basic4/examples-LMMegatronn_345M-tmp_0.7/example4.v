// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// Here is an implicit bound to a 1'b1, which is a 1'b0
// which is more than 1'b1.
assign out = sel? b : a;
endmodule
