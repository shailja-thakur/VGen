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



// The output overflow is a signal that indicates the sign of the sum. 
// The output overflow is high if a and b have opposite signs. 
// The output overflow is high if the sum is negative. 
// The output overflow is high if the sum is negative and the most significant bit of the sum is high. 
// The output overflow is high if the sum is negative and the most significant bit of the sum is high. 
// The output overflow is high if the sum is negative and the least significant bit of the sum is high. 
// The output overflow is high if the sum is negative and the least significant bit of the sum is high. 
// The output overflow is high if the sum is negative and the least significant bit of the sum is high. 
// The output overflow is high if the sum is negative and the least significant bit of the sum is high. 
// The output overflow is high ifendmodule
