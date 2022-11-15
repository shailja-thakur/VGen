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

// The counter output q is updated on the following conditions
// if the clock is positive
// if the reset is active and the counter is either at 1 or 12
// if the reset is active and the counter is 12
// the output q is set to 0 in the following conditions
// if the clock is negative
// if the reset is active and the counter is 0
// if the reset is active and the counter is 1
// if the reset is active and the counter is 2
// if the reset is active and the counter is 3
// if the reset is active and the counter is 4
// if the reset is active and the counter is 5
// if the reset is active and the counter is 6
// if the reset is active and the counter is 7
// if the reset is active and the counter is 8
// if the reset is active and the counter is 9
// if the reset is active and the counter is 10
endmodule
