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
// 
// This is a counter that counts from 1 to 12

// module counter_lut( 
//     input clk,
//     input reset,
//     output reg [3:0] q
// ); 
// 
// This is a counter that counts from 1 to 12

module counter_lut( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
// 
// This is a counter that counts from 1 to 12

// In this example, the data is initialized to zero.
// The LUT is updated at the start of the program.
// The counter is updated on the clock edgeendmodule
