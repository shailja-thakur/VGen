// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// modifiy implementation of the 2-bit case statement so that 
// it can occur on the output line as well as the
// input line. 
assign out = sel ? b : a;
endmodule
