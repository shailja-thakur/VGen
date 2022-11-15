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
assign r_next = (reset)? {1'b1,1'b1,1'b1} : {feedback_value,r_reg[4:3]};
always@(posedge clk)
	begin
	if(reset)
		r_reg <= {1'b1,1'b1,1'b1};
	else
	begin
	r_reg <= r_next;
	end
	end
// create the feedback value
// assign the MSB of r_reg to the right bit of feedback_value
// assign the MSB of r_next to the left bit of feedback_value
// xor the left and right bits of r_reg with the MSB of r_next
// xor the MSB of r_reg and r_next
// concatenate the xor results with the MSB of r_reg andendmodule
