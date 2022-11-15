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
    if (reset) q <= {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    else if (slowena)
        if (q != {9, 9, 9, 9, 9, 9, 9, 9, 9, 9})
            q <= q + 1'b1;
end

// Output ready by an active-low written value.
// On the negative edge of the clock, see above.
always @(posedge clk) begin
    if (q == 0) q <= {0, 0, 0, 0, 0, 0, 0, 0, 0, 0} else q <= {9, 9, 9, 9, 9, 9, 9, 9, 9, 9};
end

// Write 1 into sticky set and clear zero
always @(posedge clk) beginend
endmodule
