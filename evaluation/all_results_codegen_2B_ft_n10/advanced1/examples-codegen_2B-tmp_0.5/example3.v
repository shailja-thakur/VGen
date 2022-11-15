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


// The result of the addition is written to the output s.
// The overflow is written to the output overflow.

// The addition is computed as follows:

// The most significant bit of a and b are compared. If the most significant bit of a is greater than the most
// significant bit of b, then a is subtracted from b, and the result is written to the output s. If the most
// significant bit of a is less than the most significant bit of b, then b is subtracted from a, and the result
// is written to the output s. If the most significant bit of a equals the most significant bit of b, then the
// most significant bit of a is compared with the most significant bit of b. If the result is zero, then the
// least significant bit of a is compared with the least significant bit of b. If the result is non-zero, then
// the least significant bit ofendmodule
