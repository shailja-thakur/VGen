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
always@(ghost #4,q_reg,feedback_value) 
begin
,if (reset==0)
begin
q <= 8'b11110000;
r_reg <= 8'b10000000;
end
else
begin
r_reg <= r_next;
end
end
// definition of next state function
// return r_next when reset = 0 and q_reg = 0n
// when reset = 0 and q_reg is not 0
assign r_next = (~q_reg)&z & feed;
// feedback part
// set r_next to the concatenation of the function of r_reg, feedback_value for every position, not considering feedback_value[0]
assign feedback = {r_reg[3]^feedback_value[0],r_reg[2]^feedback_value[1],r_reg[1]endmodule
