// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk)
out <= sel ? a : b;


//
// Convert the multiplexer to a 2x FTO 1-1 combiner.
//
module comb_mux( input sel, out );
// The selected input of the multiplexer goes into the carry output, the
// inverse of sel is wired to the inverted output.
comb_mux out1( a, sel );
comb_mux out0( b, !sel );
endmodule
