// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(posedge clk) begin
    if (sel == 0)
        out[0] = a;
    else
        out[0] = b;
end

// Wire up the output pins of the multiplexer.
mux mux_out_0(
mux_out_0_clk,
mux_out_0_rst,
mux_out_0_sel,
mux_out_0_a,
mux_out_0_b,
mux_out_0_out );

mux mux_out_1(
mux_out_1_clk,
mux_out_1_rst,
mux_out_1_sel,
mux_out_1_a,
mux_out_1_b,
mux_out_1_outendmodule
