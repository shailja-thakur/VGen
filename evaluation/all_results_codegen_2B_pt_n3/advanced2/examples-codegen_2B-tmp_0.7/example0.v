// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
    if (!reset && !slowena)
        q <= 0;
    else if (!slowena)
        q <= 0;
    else if (clk && !reset)
        q <= (q + 1);

// On the zero edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(negedge clk)
    if (reset && slowena)
        q <= 0;
    else if (!slowena)
        q <= 0;
    else if (clk && slowena)
        q <= (q + 1);

// On the 1-bit edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment theendmodule
