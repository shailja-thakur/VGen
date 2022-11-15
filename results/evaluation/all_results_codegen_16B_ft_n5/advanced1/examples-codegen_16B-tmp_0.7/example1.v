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


always @ (a, b, s)

begin
	if (a[7] == 1)
	begin
	// most significant bit of a is high, will add 1
	// if a is negative, then s will be negative, otherwise s will be positive
	
	s = a + b;
	if (s[7] == 1)
	begin
	// most significant bit of s is high, s is negative
	// will result in a negative overflow
	overflow = 1'b1;
	end
	else
	begin
	// most significant bit of s is low, s is positive
	overflow = 1'b0;
	end
	end
	
	else if (a[7] == 0)
	begin
	// most significant bit of a is low, will add 1
	// if a is negative, then s will be negativeend
end
endmodule
