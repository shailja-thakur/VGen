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
always @(posedge clk) q <= counter(clk, reset);

// The following tests are not intended to be part of a real simulation,
// but are used to test the correctness of the simulation

// This test verifies that a value of 1 is extracted from the 3-bit register
// after reset.
test_behavior(
    counter(clk, 1),
    input clk,
    input [3:0] q,
    output reg [3:0] q_out,
    input reset
)
begin
    counter(clk, reset); 
    assert q_out == 1;
end

// This test verifies that values of 1, 2, and 3 are extracted from the 3-bit
// register after the rising edge of the clock.
test_behavior(
    counter(clk, 2),
    input clk,
    inputendmodule
