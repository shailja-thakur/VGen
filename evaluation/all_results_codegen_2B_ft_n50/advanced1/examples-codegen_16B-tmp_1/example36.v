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

	assign s = (a + b);
	assign overflow = (s[s[7]) && (!(a[s[7]) || !(b[s[7]));

// A logic statement that tests whether a negative number has been added to a positive number, detects this and does not add the first bit.
// The bits of the number must be switched before the first bit is added to the digit in the number 
	
//This encoder detects whether the most significant 1-bit of the sum (the most significant digit in the IR analysis) is a 1 or a 0. 
//This then turns 1 or 0 to be 0 or 1 in the output bit string 
	
	assign s8 = 	!(s[s[7]]) + s[s[7]];
	assign s7 = !(s[s[7] > 0]) + s[sendmodule
