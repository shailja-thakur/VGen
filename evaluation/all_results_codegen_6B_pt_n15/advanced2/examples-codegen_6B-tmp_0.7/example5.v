// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If slowena is high, also increment the output q by 10 (bypassing the counter).

always @(posedge clk or negedge slowena)
    if (slowena == 1)
        q[1] <= q[0];
    else if (slowena == 0)
        if (q[0] != 9)
            q[1] <= q[0] + 1;

// On the negative edge of the clock:
// if slowena is high, decrement the output q by 10 (bypassing the counter).
// Otherwise, only decrement the output q if the reset input is high and q is not 0.

always @(negedge clk or (slowena == 1))
    if (slowena == 1)
        q[0] <= q[1] - 10;
    else if (reset == 1)
        q[endmodule
