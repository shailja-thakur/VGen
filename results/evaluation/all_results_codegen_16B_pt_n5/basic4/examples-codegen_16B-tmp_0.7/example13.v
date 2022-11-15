// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// 
// You may assume that the values of a and b are 
// in the range [0,15]. 
assign out = sel ? b : a ;
endmodule
