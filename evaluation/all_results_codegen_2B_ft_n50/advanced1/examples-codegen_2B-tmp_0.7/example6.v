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



// One method is to use a 4-bit ripple carry adder. The next function in the basic set of functions takes a 4-bit number and makes a 5-bit number from it.
// The function then uses a ripple carry adder to add all the 5-bit numbers. The function has a high occurence of overflow if the last carry in is high.
// The function has a high occurence of overflow if the last carry in is high.

// A 2-bit ripple carry adder is also used. The next function takes a 2-bit number and makes a 3-bit number from it.
// The function then uses a ripple carry adder to add all the 3-bit numbers. The function has a high occurence of overflow if the last carry in is high.
// The function has a high occurence of overflow if the last carry in is high.

// A 1-bit rippleendmodule
