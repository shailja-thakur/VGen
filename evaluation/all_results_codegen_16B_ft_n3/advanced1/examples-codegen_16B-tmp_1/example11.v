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

 
always @*

	begin

	// both operands positive or both are negative; s and the output are both positive.
	
	if (a[7] == b[7] && a[7] == s[7])
	begin
	s = a + b;
	overflow = 'n;
	end

	// both operand are negative, or at least the lsb of a is negative
	else if (a[7] == b[7] == s[7])
	begin
	s = a - b;
	overflow = 'n;
	end

	// the lsb of a is negative, and the lsb of b is positive; s is positive
	else if (a[7] == b[7] == s[7])
	begin
	s = a + b;
	overflow = 'n;
	end

end
endmodule
