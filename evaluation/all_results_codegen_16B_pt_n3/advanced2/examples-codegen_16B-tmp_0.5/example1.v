// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the negative edge of the clock:
// if reset is high, reset the output q to 9.
// Otherwise, decrement q.
// The q value is only updated if q is not 9 and the ena input is high.

always @(posedge clk or negedge reset)
    if (reset) q <= 9'd9;
    else if (slowena)
        if (q != 9'd9) q <= q + 1'd1;
        else q <= 9'd9;
    else q <= q - 1'd1;

always @(posedge clk or negedge reset)
    if (reset) q <= 9'd9;
    else if (slowena)
        if (q != 9'd9) q <= q + 1'd1;
        else q <= 9'd9;
    else q <= q - 1'd1;
endendmodule
