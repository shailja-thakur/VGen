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


//The algorithm of the signed adder is based on the following: 

//Assume a[7:0] and b[7:0] are unsigned integers and s[7:0] is a signed integer. 
//Let a1, a2, a3, a4 be the four most significant bits in a[7:0]. 
//Let b1, b2, b3, b4 be the four most significant bits in b[7:0]. 
//Let s1, s2, s3, s4 be the four most significant bits in s[7:0]. 
//Let a12, a13, a14 be the three least significant bits in a[7:0]. 
//Let b12, b13, b14 be the three least significant bits in b[7:0]. 
//Let s12, s13, s14 be the three least significantendmodule
