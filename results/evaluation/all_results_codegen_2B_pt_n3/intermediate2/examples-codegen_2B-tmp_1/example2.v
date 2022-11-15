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
assign counter::q = [
    (not reset) when (tmp[0] == 0) else 12 & (not tmp[1:0]) when (tmp[1] == 0) else 16 + (tmp[1:0] * 4 + tmp[2:2]) when (tmp[2] == 0) else 20 + (tmp[1:0] * 8 + tmp[2:2] *4) when (tmp[2] == 1) else 16 + (tmp[1:0] * 4 + tmp[2:2] *4)
];

assign xyz [
    // This is a counter that counts from { 0, 0, 0 } xyz to 1 alpha xyz
    '+';
    { 
        // The cases using "(prev(verified) ~_()+) and 1+)" logic do not work. 
        // 2+ { 1} ... toendmodule
