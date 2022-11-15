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
always @ (posedge clk or posedge reset) begin
	if (reset) begin
	// on reset set q to all 1s
	q = 5'b11111;
	// default the feedback_value to 1
	feedback_value = 1'b1;
	end else begin
	// on reset set the feedback_value to 0
	feedback_value = 0'b0;
	// assign r_next to the value of r_reg shifted
	// by one bit position
	r_next = r_reg << 1;
	// force feedback value to 0 if r_reg == q
	// needed to verify that feedback value gets toggled correctly
	feedback_value = (r_reg == 5'b11111) ? 0'b0 : feedback_value;
	// assign q to the concatenation of the q and the feedback_valueend
end
endmodule
