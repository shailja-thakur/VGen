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
reg [3:0] q_tmp;
always @(posedge clk or posedge reset) begin
    if (reset) q <= 0;
    else if (q == 12) q <= 1;
    else q <= q_tmp + 1;
    q_tmp <= q;
end
// q_tmp is a value that is used to keep track of the last value of q
// in order to check if the counter is currently at its max value.
reg [3:0] q_tmp;
always @(posedge clk or posedge reset) begin
    if (reset) q_tmp <= 0;
    else if (q == 12) q_tmp <= 1;
    else q_tmp <= q_tmp + 1;
end
// assign the value of q to q_tmp
assign q_tmp = q;
end

// create the counter instanceendmodule
