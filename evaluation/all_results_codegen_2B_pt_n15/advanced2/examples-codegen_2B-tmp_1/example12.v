// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(slowena) begin
    if (reset && !q[POS])
        q[POS] = 0;
    else if (ena && q[NEG] != 9)
        q[POS] = q[NEG] + 1;
end

// On the negated edge of the clock:
// increment the output q if the ena input is high.
always_comb @(clk, slowena, reset)
    if (ena)
        q[POS] = q[NEG] + 1;
end
);

clock clk, slowena, reset, q [3:0];
endmodule
