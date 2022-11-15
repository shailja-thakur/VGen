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
always @ (posedge clk or posedge reset)
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
// feedback_value and r_reg have a 2 bit carry
assign feedback_value = r_reg[0] ^ r_reg[1] ^ r_reg[2] ^ r_reg[3] ^ r_reg[4] ^ r_reg[5];
// next state
assign r_next = r_reg; // default
always @ (feedback_value)
begin
	case (feedback_value)
	1'b1 :
	begin
	r_next <= r_reg; // all 1's
	end
	1'b0 :
	begin
	r_next <=end
end
endmodule
