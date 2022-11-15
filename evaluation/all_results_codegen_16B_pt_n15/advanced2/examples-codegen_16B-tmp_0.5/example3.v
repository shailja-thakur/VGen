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
    if (reset) q <= 0;
    else if (slowena && q < 9) q <= q + 1;

// On the positive edge of the ena input:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the reset input is high and q is not 9.

always @(posedge ena)
    if (reset) q <= 0;
    else if (reset && q < 9) q <= q + 1;

// On the positive edge of the slowena input:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge slowena)
    if (reset) q <= 0;
    else if (slowenaendmodule