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


wire signed [7:0] b_most_significant_bit_pos; //n bit number with only the most significant bit pos. ie. 0 in 100 bit number
assign b_most_significant_bit_pos = b[7]; // Assign the most significant bit position.

add add11 (.a(a[7]), .b(b_most_significant_bit_pos), .s(s[7]), .c_out(c_out));

generate 
	// If the carry is generated from the sum and c_out_bar is high then we have a signed overflow
	assign overflow = (carry[7]^carry[6]); 
endgenerate
// if a carry is required then c_out_bar is high

// if A < B, a signed ordering is violated. and it results in a signifigcant carry or negative sum.
endmodule
