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


// The output s is the sum of a and b, the output overflow is the one bit that tells you if a and b have a signed overflow occuring. 

// If a or b are negative and the most significant bit is high, then a signed overflow occurs if the sum of the two numbers is negative.
// The sum of the two numbers, s, is the output of the adder. 
// If the sum of the two numbers is negative and the most significant bit is low, then a signed overflow occurs if the two numbers have a negative sum.


//If the output s is a negative number, then a signed overflow occurs if the most significant bit of s is high.
//If the output s is a positive number, then a signed overflow occurs if the most significant bit of s is low.

//In other words, a signed overflow occurs if the sum of the two numbers is negative and the most significant bit of sendmodule
