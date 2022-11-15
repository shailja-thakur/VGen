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



// Declare inputs and outputs

input [7:0] a;
input [7:0] b;
output [7:0] s;
output overflow;


	assign {overflow,s}=a+b;
	
// If a or b is negative, the sum may or may not be negative, the carry is high (for a+b) or low (for a-b). 
// If the most significant bit of a or b is 1 or 0, the signed value of s is the unsigned sum. 
// Otherwise, s is a signed sum. 
// In summary, if a or b is signed, then the sum is always signed.

endmodule
