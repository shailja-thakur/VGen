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
    if (reset == 1) q <= 0;
    else if (q == 12) q <= 0;
    else q <= q + 1;
end
// make q a binary counter starting at 0
assign q = q + 1;
// assign q to 1 on the first rising edge of the clock
always @(posedge clk) begin
    if (rising_edge(clk)) q <= 0;
end
endmodule
