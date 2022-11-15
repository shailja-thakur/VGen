// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
behavior count_slow_mcu(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
behavior count_slow_block(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// The counter counts from 0 through 9, inclusive.
// The counter resets on the negative edge of the clock.
behavior count_fast(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// The counter counts from 0 through 9, inclusive.
// The counter resetsendmodule
