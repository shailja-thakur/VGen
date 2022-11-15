// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// In all other cases, assign 0 to out. 
always @( posedge clk )
// Run this strobe every w times cycles.
for ( int w=0; w<w; w++ ) {
  assign a = a &0b0111101;
  assign b = b &0b0111101;
  // h stands for half-width.
  mywire h = a &0b0111111;
  if ( h == 0b101 )
    a = b;
}
//lm_always_comb();

// Design a 1-to-3 multiplexer.
module mux(
input [7:0] a,
output [7:0] out );
// The default procedure is a prepack of all inputs.
// Each destination must finish first.
wire [4:0] merge;
assign mergeendmodule
