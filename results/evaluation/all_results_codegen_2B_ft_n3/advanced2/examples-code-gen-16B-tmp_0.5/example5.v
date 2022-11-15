// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// The slowena input is used to slow down the clock.

// The output q is a 4-bit number, so it can count from 0 to 9.

// If you think about it, you can use the same design for a counter that counts from 0 to 99, or 0 to 999, etc.

// This is a simple counter.
// We will design a counter that can count from 0 to 9, then from 0 to 99, then from 0 to 999, and so on.
// The counter will count to a number of your choice.
// The counter will have an input that, when high, will cause the counter to count up by 1 on every clock cycle.
// The counter will also have an input that, when high, will cause the counter to count up by 10 on every clock cycle.
// The counter will also have an input that, when high, will cause the counter to count up by 100endmodule
