// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset)
    if (reset) q <= 0;
    else if (slowena && q < 9) q <= q + 1;

// Finally, the output must be clocked out on the rising edge of ena.
// On the rising edge, if ena is high, then set the q output to 9.
// This makes sense as a decade counter, since the counter values are always 9, 10, ..., 90, 91, ..., 99.

always @(posedge clk or negedge ena)
    if (ena) q <= 9;

endmodule
