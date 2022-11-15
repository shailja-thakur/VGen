// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The output is undefined if sel=0 and a=5'b0_0000 or sel=1 and b=5'b0_0000.
assign out = sel ? b : a;
endmodule
