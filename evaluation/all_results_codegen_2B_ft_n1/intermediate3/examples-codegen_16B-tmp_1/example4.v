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
assign r_next = r_reg ^ {feedback_value, 2'b00, r_reg[3:2]};
always@(posedge clk, reset)
begin
	if(reset)
	begin
	// upon write to reset r_reg to 1
	// "once at the begining of time r_reg = 5'b00011
	r_reg <= 5'b00011;
	end
	else
	r_reg <= r_next;
end
assign q = r_reg;
endmodule
