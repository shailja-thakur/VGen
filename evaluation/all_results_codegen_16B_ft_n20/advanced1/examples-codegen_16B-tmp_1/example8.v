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

	assign overflow = (~a[7] & ~b[7] & s[7]) | 
	
	// checked if one of the high bits of a or b is 1 and the other is 0 (positive- large number + small number = overflow)
	// otherwise check for s high bit being 0, large number + small number = No overflow
	(a[7] & b[7] & ~s[7]); 

// assign the sum of a with b to the output s, large + small = large
	assign s = a + b;

endmodule
