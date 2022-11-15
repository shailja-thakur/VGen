// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// In any case, only a change to stat, or to ena, can cause q to be 9.
always @(posedge clk or ~reset) begin
    if (reset) q <= 0; else
    if (ena & ~stat & ~q == 9 & ~slowena) q <= q + 1;
end

always @(posedge clk) begin
    if (slowena & ~stat & ~q == 9 & ~slowena) q <= q + 1;
end

// Decay stat when 00 is reached
reg [3:0] stat = 0;
always @(posedge clk) begin
    if (stat[0] == 0) stat[0] <= 1;
    if ((stat[0] == 1) && ~stat & (stat[1] || stat[2] || stat[3])) stat[0] <= 0; 
endendmodule
