// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Both the inputs and the outputs are driven by signals.
// Test cases to be generated:
// Case where a=0 and b=3, sel=0.  Expect out=0.
// Case where a=0 and b=3, sel=1.  Expect out=3.
// Case where a=2 and b=5, sel=0.  Expect out=2.
// Case where a=2 and b=5, sel=1.  Expect out=1.
// Other bit patterns are possible, but there is not a minimum set.
*/

// SEARCH_DIAG: Put the constitutes of the oscillator component in 
//              freq_osc, the two next largest oscillators in freq_osc_2
//              and freq_osc_3, and the up to three largest time signals
//              in theendmodule
