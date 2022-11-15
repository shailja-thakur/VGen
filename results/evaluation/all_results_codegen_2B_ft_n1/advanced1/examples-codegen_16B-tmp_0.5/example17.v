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


// if the most significant bit of a is high and the most significant bit of b is low, then the sign of the sum is the same as the sign of a
// if the most significant bit of a is low and the most significant bit of b is high, then the sign of the sum is the same as the sign of b
// if the most significant bit of a and b are both high, then the sign of the sum is the same as the sign of s
// if the most significant bit of s is high, then the sign of the sum is positive
// if the most significant bit of s is low, then the sign of the sum is negative


// if the most significant bit of a is high and the most significant bit of b is low, then the sign of the sum is positive
// if the most significant bit of a is low and the most significant bit of b is high, then the sign of the sum is negative
//endmodule
