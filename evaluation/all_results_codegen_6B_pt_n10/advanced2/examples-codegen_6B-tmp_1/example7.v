// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
action slow_on_positive;
always @(posedge clk)
    if(reset) q <= 0;
    else if (slowena)
        if(q <= 9) q <= q + 1;

// On the negative edge of the clock:
// if slowena is high, pause for a while, and then reset the output q to 0.
// Otherwise, only decrement the output q if the ena input is low and q is not 0.
action slow_on_negative;
always @(negedge clk)
    if(slowena)
        q <= (1 + sqrt(1 + ((4294967296+1000*9)/slowena))) - 1;
    else
        if(q > 0) q <= q - 1;

// Compute the counter value wherever the slowena and reset inputs are high. 
always @(posedge slowendmodule
