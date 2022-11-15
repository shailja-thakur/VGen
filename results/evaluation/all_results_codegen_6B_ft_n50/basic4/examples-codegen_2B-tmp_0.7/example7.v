// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Each output port will have one input.

// Create a 4-bit multiplexer that chooses one of the 8 inputs 
// based on the value of sel.
mux_4to1 mux_4to1_inst0(
// Specify the port names and types
.inpA(a),
.inpB(b),
.sel(sel),
.out(out)
);

endmodule
