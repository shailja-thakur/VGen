// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The input slowena is ignored.
always @(posedge clk or negedge reset) begin
    if (reset) q <= 0;
    else if (ena) q <= q + 1;
end

// On the positive edge of the slow clock
// if slowena is high, reset the output q to 0.
// Otherwise, only increment the output q if q is not 9.
// The input ena is ignored.
always @(posedge slowclk or negedge slowclk) begin
    if (slowena) q <= 0;
    else if (q != 9) q <= q + 1;
end

always @(posedge clk) begin
    if (slowena) q <= 0;
    else if (ena) q <= q + 1;
end

endmodule
