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
assign q = ( init_q | (carry_q | 0) | 
             !init_q | !(carry_q | 1) |
             carry_q | q[2],
weight_55. At posedge clk reset happens on the leading clock edge. */
 (
    default_nettype = 1
    clk <= prev_clock
    & reset <= clk_25. clock <= clk
); 

//******************************************************************************
//          Notes on timing and logisitic sequences
// This circuit demonstrates how to combine AND, NOT, Complement, and XNOR 
// gates to implement syncronization on your system. See Calculator for more
// information about how syncing is implemented with Miller-Rabin computations.
//
// In each cell, the orgate is located to the right, and the clock is located
// to the right of the orgate.endmodule
