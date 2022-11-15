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
always @(posedge clk) begin
	if (!reset) begin
		r_reg = 0;
		q <= (r_reg ^ 0x0A);
	} else if (!data) begin
		r_reg <= (r_reg >> 1) ^ 0xFF;
		q <= (r_reg ^ 0x0A);
	end else begin
		r_reg <= (r_reg >> 1) ^ 0xFF;
		q <= (((data ^ 0x08) >> 4) ^ 0x01) | ((data >> 2) << 3);
	end
end

Note:-
Example 1:-	Designing a CPU of a few microseconds in LFSR\n
		1)	It is not recommended to start with the same LFSR
		    in multiple parts of the same design, since the exact same
		    data stream produced by theendmodule
