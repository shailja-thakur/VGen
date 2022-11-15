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



// The output overflow is the first bit of the result that is 1.
// For example, if a is 128 and b is 127, the result will be 1. 
// If the result is negative, then it is zero.

assign overflow = a[7] ^ s[7]; 

// The addition is done using a two's complement adder. 
// The overflow is added to the result. 

assign s = a + b + overflow;

endmodule
