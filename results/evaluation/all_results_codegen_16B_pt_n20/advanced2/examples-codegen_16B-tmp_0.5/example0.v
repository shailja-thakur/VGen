// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// In either case, only increment the output q if the slowena input is high.

always @(posedge clk or posedge reset) begin
    if (reset) q <= 0;
    else if (slowena && q < 9) q <= q + 1;
end

// On the positive edge of the slowena input:
// reset the output q to 0.
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// In either case, only increment the output q if the slowena input is high.

always @(posedge slowena) begin
    if (slowena) q <= 0;
    else if (ena && q < 9) q <= q + 1;
end

// On the positive edge of the ena input:
// reset the output q to 0.
// Otherwise, only increment the output q if theendmodule
