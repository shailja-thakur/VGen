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
// When reset or clock is input, only q[3] and q[1]/etc. are affected
// Tilt-off and Active-Low/Active-High (DL)
always @(posedge clk or posedge reset)
if (reset) q <= 4'b0001;
else if (~q[3]) q <= 4'b0001;str
else if (q[1] == 1'b1) q <= 4'b0110
else if (q[2] == 1'b1) q <= 4'b1011
else q <= q + 1'b1;
endmodule
