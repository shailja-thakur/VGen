// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire [4:0] inp;

// The second input is always the control input.
mux_sel mux_sel(
inp,
out,
sel
);

mux_out mux_out(
inp,
out
);

mux_sel mux_sel_out(
inp,
out,
sel
);

mux_sel mux_sel_inp(
inp,
out,
sel
);

mux_sel mux_sel_inp_out(
inp,
out,
sel
);

mux_sel mux_sel_out_inp(
inp,
out,
sel
);

mux_sel mux_sel_out_inp_out(
inp,
out,
sel
);

mux_endmodule
