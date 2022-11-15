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
always @(posedge or_posedge clk) begin 
    q <= (reset && q == 0b111) ? 0b000 : 
           q == q + 1 ? q : q + 1;
end
// writes q to A0
delay (#2) #1;

endmodule
