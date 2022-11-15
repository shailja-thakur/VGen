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


// As with the adder, the inputs and outputs are 2's complement numbers.

// input number is modular arithmetic.
// output number is not modular arithmetic.

// input number is of the form abcd
// output number is of the form sbc

// Write a function adder that takes two arguments a and b of type signed_int and returns the output of type signed_int

// 1. Compute the highest bit of a and the highest bit of b and store in a_high and b_high respectively.
// 2. If a_high and b_high are equal, then the signed overflow occurs.
// 3. If a_high is equal to 0 and b_high is equal to 0, then the signed overflow occurs.
// 4. Compute the actual result of a + b and store in s.
// 5. If the highest bit of s is not 0, then the signed overflowendmodule
