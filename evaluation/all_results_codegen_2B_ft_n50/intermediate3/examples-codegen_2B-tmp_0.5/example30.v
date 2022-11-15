// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
always @ (posedge clk)
begin
if (reset)
r_reg <= 5'b1;
else
r_reg <= r_next;
end
// this is the feedback part of the lfsr
// assign feedback_value to 1 if either of the following conditions are met
// 1. the reset is asserted
// 2. the feedback_value is 1 and the next_value is 0
assign feedback_value = (reset) | (r_reg[4] & (~r_next[4]));
// next_value = r_reg + feedback_value
assign r_next = r_reg + feedback_value;
// this is the output part of the lfsr
// assign the xor of bit positions 2 and 4 of r_reg to q
assign q = r_reg ^ {1'b0, r_reg[3:1]};endmodule
