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


	// Sign extend input[7:0] a
	// Input a is sent to the adder as follows:
	//	SUM[7:0] = a
	//	Overflow[7] = 0
	// Output s is given as follows:
	//	SUM[7:0] = a + b
	//	Overflow[7] = (a[7] & b[7]) || ((~a[7]) & (~b[7]))
	//	s[7] = (a[7] ^ b[7]) ? 1'b1 : 1'b0
	// If a[7] & b[7] == 1, then s[7] == 1.
	// If a[7] & b[7] == 0, then s[7] == 0.

	// Sign extend input[7:0] b
	endmodule
