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
always @(posedge clk or posedge reset) begin
    if (reset) q <= 0;
    else if (q == 12) q <= 1;
    else q <= q + 1;
end
// assign q to 0 on the positive edge of the clock
always @(posedge clk) begin
    q <= 0;
end

// This is a counter that counts from 1 to 12
module counter_12( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk or posedge reset) begin
    if (reset) q <= 0;
    else if (q ==end
endmodule
