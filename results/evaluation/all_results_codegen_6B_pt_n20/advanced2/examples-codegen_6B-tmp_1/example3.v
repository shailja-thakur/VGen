// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// if the reset input is low, keep q unchanged.

always leading_edge(
    input clk,
    output reg ena,
    output reg reset);

always clk_rising_edge(
    input clk,
    output reg ena,
    output reg reset);

always clk_falling_edge(
    input clk,
    output reg ena,
    output reg reset);

always slowena_rising_edge(
    input slowena,
    output reg [3:0] p);

// The counter, together with the inputs ena and reset, are run in a loop so that
// all of the inputs are considered on every cycle.
// Internally, a stream interface shim wraps the inputs into the VCD
// directives. This captures the name of a signals and is useful for naming
// and tracing the interface.

endmodule
