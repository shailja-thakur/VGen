// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or ~reset)
    if (reset) q <= 0; 
    else if (ena and veq(q, 9)) q <= 9;
    else q <= q + 1;

// On the positive edge of the slowena input, toggle the q output.
always @(posedge slowena)
    q <= q + 1;

// The `reset` input is a logic reset. The value doesn't matter.
always @(posedge clk or posedge reset)
    if (reset) q <= 0;
    else q <= 9;

always @(posedge clk) slowena <= 0;

endmodule
