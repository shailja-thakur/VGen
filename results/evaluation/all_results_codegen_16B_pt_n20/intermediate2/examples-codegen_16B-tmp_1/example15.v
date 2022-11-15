// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 

always @( 
    reset 
) begin
    if (reset) begin q <= 1; end
    else if (q==12) begin q <= 1; end
    else begin q <= q + 1; end
end
// For this simulation the input can be arbitrary
// We know that this is a half-adder only
// And so, for each consecutive clock, we increase q at most 1. 
// We use <clk> as the clock
always @( clk ) begin
    // we have to clock in the input or increment q
    if (clk or reset) begin
        open inputs

        q <= q + 1;
    end else begin
        q <= q - 1;
    end
end
// We have to count-down from the 2^12 qubit state        declare reg q q[12:0]; q = 0;
// dont care aboutendmodule
