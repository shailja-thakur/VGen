// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// You may use any of the sequential primitives shown
// in the lecture slides, or you may use the equivalent
// behavior using assignment statements with delays.
// You may only use primitives that were covered
// in lecture (or the equivalent).

// This module will be tested with slowena = 0.

always @(posedge clk) begin
    if (reset) q <= 4'b0000;
    else if (slowena) begin
        if (q == 4'b1001) q <= 4'b0000;
        else q <= q + 4'b0001;
    end
end

endmodule
