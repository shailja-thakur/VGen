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
assign r_next = (reset)? 5'b00000 : (r_reg<<1) | {r_reg[3],r_reg[2]} | r_reg[1] ^ r_reg[0];
assign feedback_value = r_next[2]^r_next[3]^r_reg[4];
always @(posedge clk)
begin
	if (reset == 1'b1)
	begin
// set r_reg to initial 0 value
r_reg <= 5'b0;
{r_reg[1], r_reg[0]} <= {r_reg[0], 1'b0};
end 
else
	begin
// Use feedback_value to TR ripple circuit
// on the rising and falling edge of feedback_value
// increase bit2 and bit3
r_reg <= {r_reg[3], r_end
end
endmodule
