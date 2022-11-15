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


// This sometimes explains the difference between a indeed adding the two values and merely setting the highest bit to 1'bx to simulate the addition. 

// It may not be possible or practical to find out if an overflow occurs by adding, hence we use a visual example showing how the individual bits are affected.


// Case 1: If a is all the zero's and b is all the ones, the individual bits plus the overall sum will have themost significant one turned off. 
// In that way, the individual bits are all the same, which forces the overall s to have a total of zero. 
// In the case of a signed overflow, the overall sum will also be zero, while the overflow will be equal to one.


// Case 2: If a is all the ones and b is all the zeros, the individual bits plus the overall sum will have themost significant one turned off and the 
// overflow will be equalendmodule
