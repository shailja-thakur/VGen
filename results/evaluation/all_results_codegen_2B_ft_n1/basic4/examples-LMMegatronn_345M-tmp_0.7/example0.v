// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// Here is an OR gate, each AND gate is an AND gate.
//
wire d1, d2;
d1 #(5) d1_r(a, b, sel, d1);
d1 #(5) d2_r(d1, d2, d1, d2);
assign out = d1 & d2;
endmodule
