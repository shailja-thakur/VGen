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
// if reset, assign q to 1
if (reset) 
q <= 4'b1;
// if increment q and q is 12, then increment q by 1
else if (q == 4'b1101) 
q <= 4'b1;
// if increment q, assign q to next value
else
q <= q + 1;
end
endmodule
