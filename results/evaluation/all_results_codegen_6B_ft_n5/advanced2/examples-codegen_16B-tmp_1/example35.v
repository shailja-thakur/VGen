// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always_ff @ (posedge clk) begin
if (reset) q <= #1 4'b0;
else if (slowena)
if (q == 9'd9)
q <= #1 4'b0;
else
// #1 required to ensure that values are assigned before next statement gets evaluated
q <= #1 q + 1'b1;
end

endmodule
