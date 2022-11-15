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


// Implementation

// The adder is implemented as a two-level adder.
// A two-level adder is made of two adders.
// The first adder adds the high order half of the input a and b to the high order half of the result s.
// The second adder adds the low order half of the input a and b to the low order half of the result s.
// The two adders are both implemented as two two-level adders with additional components.
// The first adder is implemented in a bit-sensitive fashion.
// The second adder is implemented in a bit-blind fashion.
// The additional components of the first adder, a[7:0]_high and a[15:8]_high, and the additional components of the second adder, b[7:0]_high and b[15:8]_high, are not used by theendmodule
