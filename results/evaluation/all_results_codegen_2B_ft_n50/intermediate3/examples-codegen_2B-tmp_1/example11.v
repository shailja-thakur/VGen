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
// increment the q in the ram with the q_entry (on reset value of q == 21)
assign q = r_reg;

parameter forbits = 4;
//parameter skip = 5;
assign op_bit_4 = q[4];
assign op_bit_3 = q[3];
assign op_bit_2 = q[2];
assign op_bit_1 = ^(q | r_reg);
assign feedback_value = ((~feedback_value) ^ (q[0] ^ q[10]));

dfrlct u168(.aclr(r_reg == 4'b0000), .clk(clk), .clken(1), .sin(feedback_value), .q(r_next));

always @(posedge clk) begin
	if(reset || reset_q_regend
endmodule
