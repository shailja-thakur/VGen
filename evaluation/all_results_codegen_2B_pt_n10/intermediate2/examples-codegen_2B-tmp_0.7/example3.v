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

wire [4:0] counter_reg;
reg [3:0] counter_out;

// This is a counter that counts from 1 to 12
module counter_timer_4_0(
    input clk,
    input reset,
    output reg [4:0] q
); 

// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 

wire [4:0] counter_reg;
reg [4:0] counter_out;

// This is a counter that counts from 1 to 12
module counter_timer_4_0_barrett(
    input clk,
    input reset,
    output reg [4:0] q
); 

// update q on the positive edge ofendmodule
