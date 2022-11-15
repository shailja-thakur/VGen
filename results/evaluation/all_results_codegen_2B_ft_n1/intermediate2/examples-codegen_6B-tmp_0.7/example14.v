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
always @(posedge clk)
{
    if (reset) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1;
}

// Here is the measured input
// This is a counter that counts from 1 to 12
module input_counter(
    input clk,
    output reg [4:0] q
);

// This is a counter that counts from 1 to 28
module input_counter_2(
    input clk,
    output reg [4:0] q
);

// This is a counter that counts from 1 to 44
module input_counter_3(
    input clk,
    output reg [4:0] q
);

// This is a counter that counts from 1 to 56
module input_counter_4(
    input clk,
    output reg [4:endmodule
