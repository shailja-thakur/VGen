// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// The sel can be given either 0 or 1, so the output of the mux is 0
not(sel_inv,sel);
and(out_0,a[0],sel_inv);
and(out_1,a[1],sel);
and(out_2,a[2],sel,sel_inv);
and(out_3,a[3],sel,sel);
and(out_4,a[4],sel);
or(out[0],out_0,out_1,out_2,out_3,out_4);
and(out_5,b[0],sel_inv);
or(out[1],out_0,out_5);
and(out_6,b[1],sel);
and(out_7,b[2],sel,sel_inv);
or(out[2],outendmodule
