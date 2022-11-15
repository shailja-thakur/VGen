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
// assign the output q to the output
// assign the output to the output
always @(posedge clk, posedge reset)
begin
	if (reset)
	begin
	r_reg <= 5'b00000;
	end
	else
	begin
	r_reg <= r_next;
	end
end
assign r_next = (feedback_value) ? r_reg : r_reg ^ {1'b0, q[4:0]};
endmodule
