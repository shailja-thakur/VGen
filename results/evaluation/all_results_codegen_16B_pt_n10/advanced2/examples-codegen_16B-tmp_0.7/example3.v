// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or negedge reset) begin:
    if (reset == 1) q <= 0;
    else if (slowena == 1) begin
        if (q < 9) q <= q + 1;
    end
end

always @(posedge clk or negedge reset) begin:
    if (reset == 1) q <= 0;
    else if (slowena == 1) begin
        if (q < 9) q <= q + 1;
    end
end

// The decade counter is a decade counter implemented as an array of counters.
// The counter for each digit is a gate controlled by a pair of comparators.
//
// For each digit:
// When a digit is incremented, the counter is incremented.
// When the counter is incremented and hits the threshold, the digit is incremented.
// When a digit is increendmodule
