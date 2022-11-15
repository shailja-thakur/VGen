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


// assign the values into the s ex
assign s = a + b; 



// The addition of a and b may cause the most significant bits to exceed the range -128 to +127, 
// if a, b signed, has more significant bits. When a signed overflow occurs the most significant bits a and b are both set to their maximum positive values. 

// The high boundary of a signed subtraction is set to -128. The subtraction of b from a will complete
// at its most significant bit b if the most significant the b is set to its maximum positive value and the most significant bit a is set to its minimum negative value, or at its most significant bit a if the most significant bit b is set to its minimum negative value. 

// The subtraction of a from b may also result in a signed overflow of the same magnitude. 
// The subtraction of b from a can cause the mostendmodule
