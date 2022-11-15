// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// Having a sel input that is not a binary 0 or 1 will cause a bus error.
assign out = sel ? b : a;
endmodule
