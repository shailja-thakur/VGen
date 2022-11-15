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
assign q = r_reg;
always @(posedge clk, posedge reset)
begin
if (reset)
begin
r_reg <= 1;
end
else
begin
r_reg <= r_next;
end
end
// calculate r_next
// start with r_reg and set r_next to r_reg
// for all bits that have feedback
// XOR bit positions 2 and 4 with the feedback value
// concatenate the most significant bit of the bit position 2 and 4 XORs and 
// assign that value to r_next
// for all bits that do NOT have feedback
// assign the bit position 0 to r_next
// for all bits that have 1 or more leading zeros
// concat the bit position 0 with itself and assign that value to r_next
// for all bits that have 2 or more leading zeros
// concatenate theendmodule
