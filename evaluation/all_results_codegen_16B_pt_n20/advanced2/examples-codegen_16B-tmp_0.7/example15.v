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
    else if (slowena && q < 9) q <= q + 1;
end

// On the positive edge of the slow enable input:
// reset the output to 0.
// Otherwise, only increment the output if the ena input is high and q is not 9.
always @(posedge slowena or negedge ena) begin
    if (ena) q <= 0;
    else if (slowena && q < 9) q <= q + 1;
end

reg [3:0] q;

// Synchronous assignments to the output reg are not allowed in Verilog.
// Assignments to q are written as follows to avoid this problem.

assign q[3] = 2'd0;
assign q[2] = 2'dendmodule
