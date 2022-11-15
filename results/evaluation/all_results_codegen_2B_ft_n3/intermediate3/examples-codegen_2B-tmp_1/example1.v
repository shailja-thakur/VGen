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

always @(posedge clk or posedge reset) begin
	// reset sets the r_reg to 0, the second line resets the q output to 0
	if (reset) begin
	r_reg <= 13'h1;
	end
end

// performs a sequential linear feedback shift register
// value of 0 rounds to 131
always @(*) begin
	// generate the next value of feedback_value by first shifting in 0 and then shifting in the advertised xor_sum
	feedback_value = r_reg[4] ^ r_reg[3];
	r_reg = { r_reg[4], r_reg[3] };
end
endmodule
