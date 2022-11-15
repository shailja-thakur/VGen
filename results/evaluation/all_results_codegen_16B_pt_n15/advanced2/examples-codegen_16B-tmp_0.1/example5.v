// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
// On the negative edge of the clock:
// if reset is high, reset the output q to 9. 
// Otherwise, only decrement the output q if the ena input is high and q is not 0.
//
// The output q is not reset on the negative edge of the clock.
//
// The output q is not reset on the positive edge of the clock.
//
// The output q is not reset on the rising edge of the slow enable input.
//
// The output q is not reset on the falling edge of the slow enable input.
//
// The output q is not reset on the rising edge of the fast enable input.
//
// The output q is not reset on the falling edge of the fast enable input.
//
// The output q is not reset on the rising edge of the reset input.
//
// The output q is not reset on the falling edge of theendmodule
