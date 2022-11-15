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


// A simple implementation of the signed adder
// a[7:0] = a[7:0] + b[7:0]
// s[7:0] = a[7:0] + b[7:0]
// overflow = a[7] + b[7]
// s[7] = overflow[7]
// s[6:0] = overflow[6:0]
// s[5:0] = overflow[5:0]
// s[4:0] = overflow[4:0]
// s[3:0] = overflow[3:0]
// s[2:0] = overflow[2:0]
// s[1:0] = overflow[1:0]
// s[0:0] = overflow[0:0]

// a[7:0] = a[7:0] +endmodule
