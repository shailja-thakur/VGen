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
    if ( reset == 1'b0 || q[3:0] == 11'b11 )
        q <= 1'b1;
    else 
        if ( q[3:0] == 12'b1 )
        q <= 1'b1;
        else 
            q <= q + 1;


  // This is a counter that counts from 16 to 16

module counter_limited( 
    input clk,
    input reset,
    output reg [3:0] dq,
    output reg [5:0] dqpin
);

always @(posedge clk)
    if (reset == 1'b0 or dqpin[3:0] == 16'b1111) read set_dq == 1;
    else read set_dq == 0;
    if ( !reset = resultsendmodule
