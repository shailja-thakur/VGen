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
always @(posedge clk or negedge reset)
	begin
	// if (reset) begin...
	r_reg <= 'b0;
	// end else if (edge) begin...
	// assign new result to r_reg
	// end
	end
assign q = r_reg;
assign feedback_value = q[2] ^ q[4];
assign r_next = {feedback_value[0], r_reg[3:1]};
endmodule
