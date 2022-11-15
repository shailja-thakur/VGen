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


signed_adder(a, b, s, overflow); 

// Implement your adder function in the module.
//
//
//
// Your adder function should return a signed value of type [7:0].
//
// The adder function should return s[7:0] and overflow in a tuple with two values.
//
//
// The first value of the tuple should be the value of s[7:0] before the addition was performed.
//
// The second value of the tuple should be 0 if no signed overflow occurred, 1 if a signed overflow occurred, and -1 if both a and b were negative and the most significant bit of s was 1.
//
//
//
//
//
//
// Example 1:
//
// Input: a = [15], b = [0], s = [0], overflow = [0]
// Output: [15],endmodule
