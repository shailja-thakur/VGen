// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire [4:0] q;

mux mux_0;
mux mux_1;

always @( posedge clk )
{
  if (sel)
    q=0;
  else
    q=1;
}

// Multiplexer

mux_0 mux_0_0;
mux_0 mux_0_1;

mux_1 mux_1_0;
mux_1 mux_1_1;

// The inputs to the multiplexers must be inputs.
mux_0 mux_0_0_0;
mux_0 mux_0_0_1;

mux_0 mux_0_1_0;
mux_0 mux_0_1_1;

mux_1 mux_1_endmodule
