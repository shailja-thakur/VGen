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
always @ *
begin
	if(reset)
	begin
	r_reg = <loading-terms>;
	end
begin
	else
	begin
	r_reg = r_next;
	end
	end
end

// implementation: 1 bit group delay ahead of feedback, 3 bit group delay after last bit and 1 bit delay after the last bit
	// "output" bit is assigned to the bit position 4

// --------------
// combinational logic
// ----------------

assign r_next = {
live_vvvv and { [4:0] {r_reg[3:0]} } | { [2:0] {feedback_value} } | { 15'b0, r_reg[4] } };

endmodule
