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
    if ((reset == 1) && (slowena == 1) && (q[3] < 9)) {
        q[3]++;
    }

// On the negative edge of the clock:
// if slow is high, increment the output q to 7.
// Otherwise, only increment the output q if the ena input is low and q is not 0.
always @(negedge clk)
    if ((slowena == 1) && (q[3] > 0)) {
        q[3]--;
    }
);

// The output q counts from 0 through 9.
// The output q is a string of three digits, with the most significant digit 0.
// The output q is a comma-separated string of the digits in the order 0, 1, 2.
// 
// For example, a count of 1 returnsendmodule
