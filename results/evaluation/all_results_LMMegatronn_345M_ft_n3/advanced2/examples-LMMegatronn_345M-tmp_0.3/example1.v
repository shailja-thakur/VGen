// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The incrementing counter is used to increment the output so that the
// count is an arbitrary amount of clock cycle.

reg [3:0] count;

// If we are in the lowest count is an arbitrary amount of clock cycle,
// the output should be counted as a clock cycle.
always @(posedge clk) begin
    if (reset)
        count <= 0;
    else
        count <= count + 1;
end

// If the ena is high, reset the output so it's 0.
// This will be a power of 2 or more than 1.
// This means that it should be a power of 2 and more than 2.

always @(posedge clk) begin
    if (reset)
        q <= 0;
   end
endmodule
