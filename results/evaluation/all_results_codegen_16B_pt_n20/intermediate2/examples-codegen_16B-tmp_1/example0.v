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
always @(posedge clk or negedge reset) begin  
    if (reset == 0) begin
        q <= 1;
    end
    else begin
        if (q == 12) begin 
            q <= 1;
        end
        else begin
            q <= q + 1;
        end
    end
end
// emulate a counter with its internal state located in a register
reg [3:0] internalCounter;
always @(posedge clk) begin
    internalCounter <= internalCounter + 1; 
end
// count using the following recipe:
// q (output) = internalCounter (input; internal state)
// when q is less than 7, increment internalCounter
// when q is not less than or equal to 7, reset internalCounter to 1
reg [3:0] output = internalCounter[0:2];
always @(posedge clkendmodule
