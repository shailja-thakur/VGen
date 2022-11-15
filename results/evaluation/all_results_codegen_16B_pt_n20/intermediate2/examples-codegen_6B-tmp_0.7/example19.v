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
always @ (posedge clk or negedge reset) 
  q <= (reg[2] ? 1'b1 : 1'b0) | (reg[1] ? 1'b1 : 1'b0) | (reg[0] ? 1'b1 : 1'b0);
endmodule
