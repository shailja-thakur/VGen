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
// Use the muldiv module to obtain the multiply of r_reg and abcdefg
// assign binary ABCDEG = E-h generation of the module
assign feedback_value=xor1[2]^xor1[4];


always @(posedge clk or posedge reset)
begin 
	if (reset)
	begin 
	r_reg <= 'hA;
	end
	else 
	begin 
	r_reg <= r_next;
	q <= 'h0;
	end
end

// assign rnext as the next value of r
assign r_next = xor1 ^ r_reg;
// Outputs (q)

endmodule
