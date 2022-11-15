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


always@(a,b,s)
begin
	// if a,b and s are all low initially then the sum s is equal to the concatenation of a and b using the '+' operator
	// So assign the output s to the concatenation of a and b
	s = a+b;

	// if only a or b are high or both a and b are high then the sum s will be high no matter what the value of the other input variable
	// so the output overflow will be high no matter what the values a and b are
	// assign the output overflow to 1
	overflow = 1'b1;
	
	// if only the most significant bit of a or b is high then the sum s may be high or low 
	// assign the output overflow to 0
	overflow = 1'b0;
end

endmodule
