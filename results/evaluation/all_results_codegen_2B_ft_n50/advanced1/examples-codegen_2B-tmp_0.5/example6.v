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



// The following logic is used to determine the sign of the sum.
// The sign of the sum is set to the sign of the most significant bit in a or b.
// For example, if a is negative and b is positive, the sum is negative, and if a is positive and b is negative, the sum is positive.
// If the most significant bits of a and b are equal, the sign of the sum is the same as the sign of a or b.

assign {overflow, s} = a + b;

// This logic is used to determine the sign of the sum.
// In this case, the sum is positive iff the most significant bits of the sum are all equal to the most significant bits of a or b.

assign {overflow, s} = a + b;

// Overflow is set to 1 if the sum is negative, or 0 otherwise.
//endmodule
