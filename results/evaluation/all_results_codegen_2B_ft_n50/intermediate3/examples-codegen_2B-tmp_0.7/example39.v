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
// assign the feedback concatenated with the 4 most significant bits to q[4]
// assign the feedback concatenated with the 3 least significant bits to q[3]
// assign the feedback concatenated with the 2 least significant bits to q[2]
// assign the feedback concatenated with the 1 most significant bit to q[1]
// assign the feedback concatenated with the 0 least significant bit to q[0]
// assign the feedback concatenated with the 0 most significant bit to q[4]
always @(posedge clk)
begin
if (reset)
	r_reg <= 1;
else 
	r_reg <= r_next;
end
assign r_next = (feedback_value) ? (r_reg ^ {r_reg[3], r_reg[2], r_reg[1], r_reg[0]}) : (rendmodule
