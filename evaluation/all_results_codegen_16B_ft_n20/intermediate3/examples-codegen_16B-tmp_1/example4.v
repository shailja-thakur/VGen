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
always @(posedge clk or posedge reset ) begin
	if(reset) begin
// assign r_reg to 1
	r_reg <= 4'b1110;
	// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
	feedback_value <= ~{r_reg[4],r_reg[2]};
	// assign the concatenation of r_reg and feedback_value to r_next
	r_next <= {feedback_value,r_reg};
	// assign r_next to q
	q <= r_next; 
	end
	else begin
// do not change state
	q <= r_next; 
	end
	end
endmodule
