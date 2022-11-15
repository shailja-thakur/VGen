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


// The output s is the sum of a and b. 
// The output overflow is the signed overflow of a and b.

// The output overflow is high if the most significant bit of a and b are both 1.
// The output overflow is high if the most significant bit of a and b are both 0.

// The output overflow is high if the most significant bit of a and b are different.

// The output overflow is high if the most significant bit of a is 0 and the most significant bit of b is 1.

// The output overflow is high if the most significant bit of a is 1 and the most significant bit of b is 0.

// The output overflow is high if the most significant bit of a and b are both 1 or 0.

// The output overflow is high if the most significant bit of a is 0 and the most significant bit of b is 1 or 0.

// The outputendmodule
