// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The value of sel does not matter.
// The value of sel is defined by the input signal "sel".
assign out = sel ? b : a;
endmodule
