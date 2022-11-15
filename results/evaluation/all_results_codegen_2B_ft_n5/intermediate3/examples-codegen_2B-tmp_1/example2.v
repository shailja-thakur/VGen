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
pipeline lfsr1(reset,clk,r_reg,claimer,q,feedback_value,r_next);
always @*
begin
case(r_reg)
 // on reset set r_reg to 1
4'b0: r_next = {q[2:0]^q[3], 5'd0};
4'b1: 
begin
case({q[4],q[3],q[2],q[1],q[0]})
// concatenate the rightmost 4 bits of feedback, 128-bit Rcon
5'b0_00000: r_next = {feedback_value,{q[0], r_next[2:1]},q[3]};
5'b0_00001: r_next = {feedback_value, {q[1],r_next[3:2]},end
end
endmodule
