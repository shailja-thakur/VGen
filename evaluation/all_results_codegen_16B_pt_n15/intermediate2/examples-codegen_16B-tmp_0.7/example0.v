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
reg [3:0] q;
always @(posedge clk or posedge reset) begin
    if (reset) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1;
end
// count up to 12 and output that value on the q output
always @(posedge clk) begin
    if (q == 12) q <= 1;
    else q <= q + 1;
end
endmodule
