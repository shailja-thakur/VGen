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


// The output s is equal to a + b if no overflow occurs. 
// The output s is equal to a - b if a signed overflow occurs. 

// The output overflow is equal to a signed overflow when the most significant bit of a and b are both high. 

// The output overflow is equal to a signed overflow when the most significant bit of a and b are both low. 

// The output overflow is equal to a signed overflow when the most significant bit of a is high and the most significant bit of b is low. 

// The output overflow is equal to a signed overflow when the most significant bit of a is low and the most significant bit of b is high. 

// The output overflow occurs when the most significant bit of a is high and the most significant bit of b is high. 
// The output overflow does not occur when the most significant bit of a is low and the most significant bitendmodule
