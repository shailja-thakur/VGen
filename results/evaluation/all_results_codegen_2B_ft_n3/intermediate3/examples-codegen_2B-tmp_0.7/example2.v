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
always @(posedge clk) begin
	if (reset) begin
	// reinitialize to all zeros
	r_reg <= 5'b0;
	end
	else begin
	// Shift the current value of r_reg left
	r_reg <= r_next;
	end
end
// define the next value of r_reg
// assign the feedback_value to the xor of bit positions 2 and 4
// of r_reg
assign r_next = {feedback_value, r_reg[4:3]};
assign q = r_reg;
endmodule
