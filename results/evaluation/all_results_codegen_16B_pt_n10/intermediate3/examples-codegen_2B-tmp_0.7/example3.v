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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
assign q = r_reg;
always @(posedge clk, posedge reset)
begin
	if (reset)
	begin
// assign the value of r_reg to q when reset is high
// set all feedback bits to 0 and the MSB to 1
// assign the MSB to the output q
r_reg <= 5'b11001;
	end
	else
	begin
// if none of the reset, feedback_value should be 0
// assign the value of r_next to q
r_reg <= r_next;
	end
end
assign feedback_value = r_reg[0] ^ r_reg[1];
assign r_next = {r_reg[3:1], feedback_value};
endmodule
