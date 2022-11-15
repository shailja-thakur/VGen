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
// assign feedback_value to the output q[4]
// assign q[4] to the output q[3]
// assign q[3] to the output q[2]
// assign q[2] to the output q[1]
// assign q[1] to the output q[0]
// assign q[0] to the output r_next
assign q = {r_next[3], r_next[2], r_next[1], r_next[0]};
assign feedback_value = r_reg[3] ^ r_reg[4];
always @(posedge clk or posedge reset)
begin
	if (reset)
	begin
	r_reg <= 5'b00000;
	end
	else
	begin
	r_reg <= r_next;
	end
end
// assign the next value of r_endmodule
