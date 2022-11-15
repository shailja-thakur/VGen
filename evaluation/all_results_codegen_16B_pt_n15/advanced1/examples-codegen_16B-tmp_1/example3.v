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



//In order to add two numbers b and c where b(b[7:0]) and c(c[7:0])
//are of the form (-)2's complen, the unsigned addition of b and c
//can be implemented in the following steps:
//1. Realloding the MSBs of to c, b into b', and c' respectively, such
//that 2's complement of b' and c' are zero and replacing the 0 MSBs of b' and c'
//by 1's such that the signs of b and c are inverted
//2. Convert b' to two's complement by flipping all MSBs on the number b' and
//and adding 1 to the other MSBs if b' is negative and subtracting 1 from
//the other MSBs if b' is positive.
//3. Subtract c' from the result by adding 1 to as many MSBs onendmodule
