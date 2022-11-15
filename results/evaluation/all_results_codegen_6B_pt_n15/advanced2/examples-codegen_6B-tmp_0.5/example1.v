// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
def clock_positive():
    if (reset == 1'b1):
        q[3:0] <= 0;
    else if (slowena == 1'b1 and q[3:0] < 9):
        q[3:0] <= q[3:0] + 1;

// On the negative edge of the clock:
// if reset is high, set the output q to 0.
// Otherwise, only decrement the output q if the ena input is high and q is not 0.
def clock_negative():
    if (reset == 1'b1):
        q[3:0] <= 0;
    else if (slowena == 1'b1 and q[3:0] > 0):
        q[3:0] <= q[3:0] - 1;

// The counter clockwise from 9 to 0, inclusive.
// Theendmodule
