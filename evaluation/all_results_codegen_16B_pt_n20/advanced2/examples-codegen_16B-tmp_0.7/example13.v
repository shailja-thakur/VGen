// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
    if (reset)
        q <= 0;
    else if (slowena && q < 9)
        q <= q + 1;
end

// The negative edge case is a bit tricky. Here is a simple way to do it:
// on the negative edge of the clock, if the ena input is high and q is not 9, 
// then decrement q, and only do this if q was not 0.
always @(negedge clk) begin
    if (slowena && q > 0)
        q <= q - 1;
end

// The final case is where q is 9, so reset it to 0, and don't change it on the
// negative edge of the clock.
always @(posedge clk) begin
    if (q == 9)
        q <= 0;
end

// Theendmodule
