// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
mux_2to1 mux_0(a,b,sel,out[0]);
mux_2to1 mux_1(a,b,sel,out[1]);
mux_2to1 mux_2(a,b,sel,out[2]);
mux_2to1 mux_3(a,b,sel,out[3]);
mux_2to1 mux_4(a,b,sel,out[4]);
endmodule
