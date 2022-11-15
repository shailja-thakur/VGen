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
// output q so that q=12 corresponds to the maximum value of
// the counter
always @(posedge clk or posedge reset) begin
    if (reset == 0) q <= 0;
    else if (q == 12) q <= 0;
    else q <= q + 1;
    q <= 11;
end
// The following two statements ensure that q is less than 12
// and greater than 0
always @(posedge clk or posedge reset) begin
    if (reset == 0) q <= 0;
    else if (q == 12) q <= 0;
    else if (q >= 12) q <= 11;
    else q <= q + 1;
end
// The final statement ensures that q is in the range [1:12]
always @(posedge clk or posedge reset) begin
    if (reset == 0) q <= 0;
end
endmodule
