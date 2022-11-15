// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Increment the output q by 1 on the positive edge of the clock.
always @(posedge clk or negedge reset) begin
    if (reset) q <= 0;
    else if (slowena && q < 9) q <= q + 1;
end

// On the negative edge of the clock:
// if reset is high, reset the output q to 9. 
// Otherwise, only decrement the output q if the ena input is high and q is not 0.
// Decrement the output q by 1 on the negative edge of the clock.
always @(posedge clk or negedge reset) begin
    if (reset) q <= 9;
    else if (slowena && q > 0) q <= q - 1;
end

// The input clk is divided by 2, and the result is used to drive the decade counter.
// The decade counterendmodule
