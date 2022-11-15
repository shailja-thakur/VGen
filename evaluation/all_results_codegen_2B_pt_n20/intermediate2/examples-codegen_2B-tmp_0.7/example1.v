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

// This is a counter that counts from 0 to 12
module counter2( 
    input clk,
    input reset,
    output reg [7:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 

// This is a counter that counts from 0 to 22
module counter3( 
    input clk,
    input reset,
    output reg [15:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 22, assign q to 1
// else, increment q by 1 

// This is a counter that counts from 0 to 12
module counter4( 
    endmodule
