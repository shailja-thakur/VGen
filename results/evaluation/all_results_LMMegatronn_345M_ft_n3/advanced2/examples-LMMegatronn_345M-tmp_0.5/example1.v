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
// The clock enable signal is created by inverting the clock created by inverting the clock created by inverting the clock created by inverting the clock created by inverting the clock created by inverting the clock created by inverting the clock created by inverting the clock created by inverting the clock created by inverting the clock created by cken_counter.
// The clock enable signal is created by cken_counter and the output so that the clock enable signal is used to increment the frequency and
// period counter.
//
// The clock enable signal is created by cken_counter, so that the clock enable signal is used to increment the frequency and
// the frequency counter, so it is the period counter, and it is the period counter, then the
//    the clock enable signal is created by an internal counter.
//
// The clock enable signal should be created by cken_counter, so that the clock enable signalendmodule
