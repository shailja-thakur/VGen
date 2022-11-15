// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or negedge slowena)
if (slowena == 1) begin
    if (reset == 1) q[0] = 0;
    else if (q[0] < 9) q[0] += 1;
end

// On the negative edge of the clock:
// if ena is high, increment the output q.
// Otherwise, only decrement the output q if q is not 0.
always @(negedge clk or negedge slowena)
if (slowena == 1) begin
    if (slowena == 1) q[0] += 1;
    else if (q[0] > 0) q[0] -= 1;
end

endmodule
