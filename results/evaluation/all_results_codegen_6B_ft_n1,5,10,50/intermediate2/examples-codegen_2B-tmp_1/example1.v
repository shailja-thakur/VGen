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
assrq2 clk_eq( 
    clk, update[1:0] reset_eq( reset ), 
    q[3] <= 1'b0,
    q[2] <= 1'b0,
    q[1] <= 1'b0,
    q[0] <= 1'b0,
    1'b1,
    1'b0,
    q[3] eq 1'b1,
 
    q[2] eq 1'b1,
    q[1] eq 1'b1,
    q[0] eq 1'b1,
    q[2] eq 1'b0,
    q[1] eq 1'b0,
    q[0] eq 1'b0 
); 
// This is a counter that counts from 1 to 12
module counter2( 
    inputendmodule
