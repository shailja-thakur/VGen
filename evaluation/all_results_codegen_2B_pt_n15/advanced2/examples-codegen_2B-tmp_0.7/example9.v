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
    if (slowena)
        q <= (clk / 4 + (slowena ? 0 : 9));

// On the negative edge of the clock:
// if reset is low, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is low and q is not 9.
always @(negedge clk)
    if (!reset)
        q <= (clk / 4 + (slowena ? 9 : 0));

// reset the counter if the slowena input changes.
// this is a toggle rather than an event input because 
// we want to keep the value even if the slowena input 
// changes from low to high.
always @(reset)
    if (slowena)
        q <= (slowena ? 0 : 9);

endmodule
