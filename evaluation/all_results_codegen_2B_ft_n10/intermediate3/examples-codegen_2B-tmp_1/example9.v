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
// assign 1 the value of r_reg at the output stage
///this processor strobes the output q with a value of 0 to 4.
///this processor will hold 0 to 16 evertime its inputs are on, but only take on for 0 - 7 time periods.
always @*
begin
	if (reset)
	begin
	{q,feedback_value} = {5'b00000,1'b0}; //reset to 4-0 with assignment
	q[4:1] = 4'b0000;
	end

	else
	begin
	{q,feedback_value} = {q[4:0],feedback_value}; //shift in the randomly placed feedback values
	feedback_value = q[4] ^ q[3]; //calculate the xor optimally
	q[4] = feedback_value;
	q[3] = feedbackend
end
endmodule
