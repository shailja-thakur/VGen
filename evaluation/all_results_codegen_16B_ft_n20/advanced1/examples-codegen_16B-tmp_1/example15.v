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


// If the most siginificant bit of both a and b are high, the most siginificant bit of s must be zero and signed overflow cannot occur.
// If the most significant bit of a is low, the least significant bits of s are appended. Also, if the only bit that is high is b[i] alli low must be true for i = 0,1,2,3 otherwise signed overflow might occur.
// If the most significant bitsa and b are both low, the least significant bit s is set to a-b.
// a and b are interleaved and added sequentially, this can be accomplished much more effeciently be interchanging the inputs and their roles but then a different method would need to be used.



assign overflow = a[7] + b[7] + a[6] + b[6] + a[4] + b[4] + a[endmodule
