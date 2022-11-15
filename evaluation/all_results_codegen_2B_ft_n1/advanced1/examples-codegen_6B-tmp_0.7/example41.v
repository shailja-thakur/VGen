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



// a and b are signed numbers and are added in signed mode 

assign s = a + b;

assign overflow = (a[7] & b[7] & ~s[7]) | ((~(a[7] | b[7])) & s[7]); 
// the addition of the unsigned numbers a and b is unsigned. If the two numbers are both negative or both positive, then the sum is unsigned. 
// if the sum is negative, then s is one less than the sum. The carry is the most significant bit of the sum. 
// if the sum is positive, then s is one greater than the sum. The carry is the most significant bit of the sum.

endmodule
