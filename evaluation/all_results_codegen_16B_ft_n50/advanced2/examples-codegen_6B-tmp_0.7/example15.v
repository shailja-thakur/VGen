// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Thereby, skipping the first decade, and counting the seconds.
// On the negative edge of the clock:
// if ena is high, only decrement the output q if q is not 0.
// Otherwise, only decrement the output q if the slowena input is high and q is not 0.
// Thereby, skipping the first decade, and counting the minutes.
// On the negative edge of the clock:
// if slowena is high, only decrement the output q if q is not 0.
// Otherwise, only decrement the output q if the clock is high and q is not 0.
// Thereby, counting the hours.
// On the negative edge of the clock:
// if clock is high, only decrement the output q if q is not 0.
// Otherwise, only decrement the output q if the reset input is high and q is not 0.
// Thereby, counting theendmodule
