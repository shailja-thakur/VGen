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
always @ (posedge clk or posedge reset) 
if (reset) q <= 4'b0000;
else if (q == 4'b0110) q <= 4'b0000;
else if (q == 4'b1200) q <= 4'b0000;
else q <= q+1;
endmodule
