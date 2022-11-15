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

		    a_msb = a[7]
		    b_msb = b[7]
		    s_msb = s[7]

// Determine whether or not a signed overflow occurred by checking the sign bit of s
	    overflow = (s_msb == 1)

// Combine the two inputs and the result to determine the most significant bit of the result
		    a_add_b = (a_msb & b_msb) | (a_msb + b_msb)

// Shift the result left to put the sign bit of the result in the least significant bit.
// This process uses the signed shift right instruction
		    s = (s_msb << 1) | a_add_b

endmodule
