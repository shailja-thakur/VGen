// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
mux2to1 mux0(a, b, sel, out[0]);
mux2to1 mux1(a, b, sel, out[1]);
mux2to1 mux2(a, b, sel, out[2]);
mux2to1 mux3(a, b, sel, out[3]);
endmodule
