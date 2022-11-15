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


#define SIGN_ADD_RESULT(a, b, s) (((a)+(b))&0xFF)

#define SIGN_ADD_OVERFLOW(a, b, s) (s>>7)

#define SIGN_ADD_INT(a, b) ((a)+(b))

module signed_adder_test(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

signal [15:0] a;
signal [15:0] b;
signal [7:0] s;
signal overflow;


// These are the input signals
//  a[7:0] is the first input
//  b[7:0] is the second input
//  s[7:0] is the output
//  endmodule
