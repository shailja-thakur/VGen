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


int a, b, s, ovf;

signed_adder(a,b,s,ovf);

// a = +0
// b = +0
// s = +0
// ovf = 0

// a = +127
// b = +127
// s = +127
// ovf = 0

// a = +128
// b = +128
// s = -128
// ovf = 1

// a = -128
// b = -128
// s = -128
// ovf = 1

// a = -127
// b = -127
// s = -127
// ovf = 0

// a = -127
// b = -127
// s = -127
// ovf = 0

// a = -1
// b = -1
// s = -127
// ovf =endmodule
