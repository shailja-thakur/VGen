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
always @(posedge clk) begin
    if (reset) begin 
        q <= 1;
    end else if (q == 12) begin
        q <= 1;
    end else begin 
        q <= q + 1;
    end
end

module boundary( 
    input clk,
    input reset,
    input [1:0] in,
    output reg [3:0] out
); 
// count from 1 to 12
always @(posedge clk) begin
    if (reset) begin 
        out <= 1;
    end else if (in == 0) begin
        out <= in;
    end else begin 
        out <= in + 1;
    end
end

module clk_gen( 
    input clk,
    input reset,
    output reg out
); 
// count up on positiveendmodule
