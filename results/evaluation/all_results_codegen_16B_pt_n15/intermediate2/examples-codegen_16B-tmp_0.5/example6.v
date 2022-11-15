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
assign q = (reset == 0) ? 1 : (q + 1) % 13;
// always assign q to the next value on the clock
always @(posedge clk) q <= q;
endmodule
