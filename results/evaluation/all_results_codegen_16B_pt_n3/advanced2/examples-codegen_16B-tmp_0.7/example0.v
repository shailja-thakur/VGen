// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset) begin
    if (reset) q <= 0;
    else if (clk and not slowena) q <= q + 1;
    else begin
        if (q < 9) q <= q + 1;
    end
end

// On the positive edge of the ena input:
// if reset is high, reset the output q to 0. 
// Otherwise, only set the output q to 9 if ena is high and q is 0.

always @(posedge clk or negedge ena) begin
    if (reset) q <= 0;
    else if (ena and q == 0) q <= 9;
    else begin
        if (q == 9) q <= 0;
    end
end


// Design a decade counter that counts from 0 through 9, inclusive.
//
// This versionendmodule
