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

if (reset) begin
q <= 0;
end

else begin
if (slowena) begin
if(q < 9) begin
q <= q + 1;
end else begin
q <= 0;
end
end
end
end
// Design a decade counter that counts from 0 through 9, inclusive.
// (Note: The question says to use a 4-bit counter, but the design only uses 3 bits.)
// When the counter reaches 9, it should reset back to 0.
// When ena is true and the counter reaches 9, it should increment the counter by 1
// and keep counting.

// Note: You may assume that the clock is running at least at the frequency
// of the slow clock.

// Note: The question says to use a 4-bit counter, but the design only uses 3 bits.
// (Theendmodule
