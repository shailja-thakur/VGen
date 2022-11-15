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
// shift the least significant bit to the right
assign feedback_value = r_reg[2] ^ r_reg[4];
always @ (posedge clk)
begin
	if (reset)
	begin
	// set value of r_reg to all 1's
	// this is done by using the concatenation operator {5{1'b1}}
	r_reg <= {5{1'b1}};
	// set the value of r_next to all 1's
	r_next <= {5{1'b1}};
	end
	else
	begin
	// shift the value of r_reg to the right
	r_reg <= r_next;
	// xor r_reg with feedback_value
	r_next <= r_reg ^ feedback_value;
	end
end
endmodule
