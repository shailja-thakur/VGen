// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
mux_N_bit # (5) m1 (a,b,sel,out[0]);
mux_N_bit # (5) m2 (a,b,sel,out[1]);
mux_N_bit # (5) m3 (a,b,sel,out[2]);
mux_N_bit # (5) m4 (a,b,sel,out[3]);
mux_N_bit # (5) m5 (a,b,sel,out[4]);
endmodule
