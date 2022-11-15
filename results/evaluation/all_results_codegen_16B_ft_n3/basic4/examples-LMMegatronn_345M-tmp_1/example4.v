// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// BecauseIl=0, are mapping from mux. 
wire [1:0] sel_mux;
mux mux_1_1(a[0], b[0], sel, out[0], sel_mux);
mux mux_2_1(a[1], b[1], sel_mux, sel_mux);
mux mux_3_1(a[2], b[2], sel_mux, sel_mux);
mux mux_4_1(a[3], b[3], sel_mux, sel_mux);
mux mux_5_1(a[4], b[4], sel_mux, sel_mux);
mux mux_6_1(a[5], b[5], sel_endmodule
