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
// The final "reset" is the counter.
// "reset" is the count, and "set" is the new count.
// "load" is the new count, and "load" is the new count.
// "load_en" is the counter.
// "load_en" is the counter.
// "load_counter" is the "counter.
// "load_counter_r" is the "counter_r" is the "counter_r" is the "counter_r" is the "counter_r"
// "counter_en" is the counter.
// "load_counter_r" is the "counter_r" is the "counter_r" is the "counter_r" is the "counter_r" is the "counter_r" is the "counter_r"
// "counter_en" is the counter.
// "load_counter_endmodule
