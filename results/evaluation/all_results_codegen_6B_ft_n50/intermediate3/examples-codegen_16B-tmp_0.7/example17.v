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
// define the feedback circuit
assign feedback_value = q[4] ^ q[2];
// define the clk and reset instances
always @(posedge clk) 
begin
	if (reset)
	begin
	// when reset is asserted, set the value of r_reg to 1
	r_reg <= 1'b1;
	// wait 1 clock cycle for feedback to update
	end
	else
	begin
	// else, maintain the previous value
	r_reg <= r_next;
	end
end
// define the r_next circuit
assign r_next = (r_reg & ~reset) | (r_reg & feedback_value);
endmodule
