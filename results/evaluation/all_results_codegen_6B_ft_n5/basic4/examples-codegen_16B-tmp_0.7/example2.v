// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// In all cases, out = 5'b0 (zero) when no input is selected.
assign out = sel ? b : a;
endmodule
