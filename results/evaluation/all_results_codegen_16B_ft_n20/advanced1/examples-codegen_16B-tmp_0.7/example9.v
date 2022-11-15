// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low

	// assign the most significant bit of a to a_most_sig_bit_of_a
	// assign the most significant bit of b to b_most_sig_bit_of_b

	// assign the sum of a and b to s
	// assign the most significant bit of s to s_most_sig_bit_of_s

	// check if the bits of a and b are negative
	// if the bits of a and b are negative, then the bits of s should be negative
	// assign the most significant bit of s to s_most_sig_bit_of_s_negative
	// assign the overflow to overflow

assign a_most_sig_bit_of_a = a[7];
assign b_most_sig_bit_of_b = b[7];
assign s_most_sig_bit_endmodule
