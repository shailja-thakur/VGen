// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Combinatorial logic is built around a set of multiplexers.
// Each multiplexer has 4 inputs.
// The multiplexer inputs are 0-indexed.
// The multiplexer outputs are 1-indexed.
// Each multiplexer has 4 outputs.
// Each multiplexer has 4 inputs and outputs.
// The multiplexer inputs are 0-indexed.
// The multiplexer outputs are 1-indexed.

// The dut uses a 4-to-1 multiplexer to decide whether or not
// we need to take the 'a' input.
// The multiplexer has a set of inputs in which the low-order
// bits are 0. Otherwise, the input is a 1.
// The multiplexer outputs are 0-indexed, with an extra 0 bit
// that is always 1.

// The dut uses a 4-endmodule
