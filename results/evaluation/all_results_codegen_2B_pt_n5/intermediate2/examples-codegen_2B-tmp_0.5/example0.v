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

void main() 
{ 
  counter clk_1, clk_2, clk_3, clk_4, clk_5, clk_6, clk_7, clk_8, clk_9, clk_10, clk_11, clk_12; 
  counter reset_1, reset_2, reset_3, reset_4, reset_5, reset_6, reset_7, reset_8, reset_9, reset_10, reset_11, reset_12; 
  counter q_1, q_2, q_3, q_4, q_5, q_6, q_7, q_8, q_9, q_10, q_11, q_12; 
  counter q_13, q_14, q_15, q_16, q_17, qendmodule
