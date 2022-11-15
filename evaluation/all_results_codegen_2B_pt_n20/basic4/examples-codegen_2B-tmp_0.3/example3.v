// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a and b to out.

wire [4:0] a_out, b_out;

mux mux_inst(
a_out, b_out,
sel,
out );

// Multiplexer with a delay.
// Design a 2-to-1 multiplexer with a delay.
module mux_delay( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a and b to out.

wire [4:0] a_out, b_out;

mux_delay mux_delay_inst(
a_out, b_out,
sel,
out );endmodule
