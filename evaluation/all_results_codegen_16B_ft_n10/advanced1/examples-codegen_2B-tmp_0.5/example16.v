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


// Constraints: 
//     a[7:0] and b[7:0] are 8-bit 2's complement integers. 
//     s[7:0] is a 8-bit 2's complement signed integer. 
//     overflow is a boolean. 
//     overflow is initially false. 
//     s[i] = a[i] + b[i]
//     s[i] is the addition of a[i] and b[i]
//     s[i] is not negative if a[i] is positive and b[i] is negative
//     s[i] is not negative if a[i] is negative and b[i] is positive
//     s[i] is not negative if a[i] is positive and b[i] is positive
//     s[i] is negative if a[i] is negative andendmodule
