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
wire [3:0] a;

// This is a counter that counts from 12 to 1
module counter_12(
    input clk,
    input reset,
    output reg [3:0] q
);

// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 12
// else if q is 1, assign q to 12
// else, increment q by 1 
wire [3:0] b;

// This is a counter that counts from 1 to 12
module counter_12b(
    input clk,
    input reset,
    output reg [3:0] q
);

// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 12
// else if q is 12, assign q to 12
// else, increment q by 1 
wireendmodule
