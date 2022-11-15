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


// we can use unsigned additions to add two 8-bit 2's complement numbers:
// s = a + b + (s & 0x80)
// + a + b + (s & 0x80)
// + a + b + (s & 0x80)
// + a + b + (s & 0x80)
// + a + b + (s & 0x80)
// + a + b + (s & 0x80)

#define ADD(a, b) a + b + (a < 0 && b > 0 ? 1 : 0)

#define SHR(x, n) (x) >> (n)

// s = a + b + (s & 0x80)
// add a and b to the output s
#define ADD_A(a) s = ADD(s, a)

// add b and the most significantendmodule
