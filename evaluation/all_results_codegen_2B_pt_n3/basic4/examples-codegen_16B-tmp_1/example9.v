// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// In general, sel can be any value, and out is 
// assigned to one of those two options dependent
// on the value of sel. 
assign out = sel ? b : a;
endmodule
