// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
assign out=(sel)? b:a; 
// 1-bit NOT required as A and B are both binary numbers 1..0

endmodule
