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
// if reset is asserted then assign the output q to the input q
assign r_next = (reset==1'b1) ?	{5'b10000,r_reg} : {feedback_value, r_reg};
assign r_reg = {hot_r_reg};
assign hot_r_reg = {1'b0,r_reg};
assign q = r_next ^ (last_shift & q_next);
assign xor3 = {q_next[4],r_next[4],hot_r_reg[4]};
assign feedback = {xor3[1],0,3'b0};
assign q_next = q & {{3{~last_shift}},1'b0} | {feedback_value, {5{~last_r_reg}}};
endmodule
