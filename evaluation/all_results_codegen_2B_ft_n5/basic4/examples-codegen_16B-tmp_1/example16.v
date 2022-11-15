// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// enín o el simple mux
mux2x1 m1(m[0], a0, sel, muxOut[0]);
mux2x1 m2(m[1], a1, sel, muxOut[1]);
mux2x1 m3(m[2], a2, sel, muxOut[2]);
mux2x1 m4(m[3], a3, sel, muxOut[3]);
mux2x1 m5(a[4], b, sel, muxOut[4]);
endmodule
