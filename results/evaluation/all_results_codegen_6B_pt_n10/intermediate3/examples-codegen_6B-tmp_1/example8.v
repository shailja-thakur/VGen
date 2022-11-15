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
always @(posedge clk or negedge reset) begin
	if (reset) begin
		r_reg <= 1'b1;
	endelse begin
		r_next <= (r_reg ^ ((ff(7) << 3) | feedb));
		feedback_value <= ((ff(7) << 2) | (r_reg & ff(6)));
        q <= ((r_next << 5) | (feedback_value << 2) | (r_reg & ff(1)));
	end
end
''')


# create simple testbench using our new translator
tb = TestBench(translator)

# create the result
expected_val = "F3732F3933F39714F2343E423327A534EB4F4"
expected_val = "3404041040420404304043040420404endmodule
