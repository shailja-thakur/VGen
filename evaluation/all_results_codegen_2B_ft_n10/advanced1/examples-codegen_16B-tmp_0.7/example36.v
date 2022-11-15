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

	// Determine if there is an overflow.
	// Set the overflow output to 1 if there is a signed overflow.
	// Set the overflow output to 0 if no overflow occurs.
	assign overflow = ( (a[7] == 1'b0) && (b[7] == 1'b1) && (s[7] == 1'b1) ) || ( (a[7] == 1'b1) && (b[7] == 1'b0) && (s[7] == 1'b0) );

	assign s = (a[7] == b[7]) ? 	// if signs are equal, then add them to get a valid sum
	a + b : 
	a - (b + {8{a[7]}});

endmodule