// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// Write code for mux in the body
mux_2_1 four(a[0],b[0],sel,out[0]);
mux_2_1 five(a[1],b[1],sel,out[1]);
mux_2_1 six(a[2],b[2],sel,out[2]);
mux_2_1 seven(a[3],b[3],sel,out[3]);
mux_2_1 eight(a[4],b[4],sel,out[4]);
endmodule
