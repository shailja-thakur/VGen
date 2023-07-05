// This is a counter that counts from 1 to 12
module counter( 
input clk,
input reset,
output reg [3:0] q
); 
// update q on the positive edge of the clock 
// q increments by 1 from 1 to 12