// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Finally, only increment the output q if the ena input is low.

always @(posedge clk or negedge reset) begin
    if (reset) q <= {0, 1, 2};
    else if (slowena && q != 9) q <= q + 1;
    else if (!slowena && q != 9) q <= q + 1;
end

// The output should be 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.

always @(posedge clk or negedge reset) begin
    if (reset) q <= {0, 1, 2};
    else if (slowena && q != 9) q <= q + 1;
    else if (!slowena && q != 9) q <= q + 1;
end

always @(posedge clk or negedge reset) begin
    ifend
endmodule
