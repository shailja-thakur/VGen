// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

wire [4:0] in_a, in_b;

mux_sel_in_a mux_sel_in_a( in_a, sel, in_b );
mux_sel_in_b mux_sel_in_b( in_b, sel, in_a );

mux_sel_out_a mux_sel_out_a( out, sel, in_a );
mux_sel_out_b mux_sel_out_b( out, sel, in_b );

mux_mux mux_mux( out, sel, in_a, in_b );

mux_sel mux_sel( out, sel, in_a, in_b );

mux_sel_in mux_sel_in( out, selendmodule
