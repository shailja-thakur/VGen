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


signed_adder signed_raising_adder(input [7:0] a,
     input [7:0] b,
     output [7:0] s
); 


// This is the test program. It evaluates the part of the design involving the adders and outputs the results of the adder.

main()
{
    signed_picture bit;

    signed_picture bit1;

    signed_picture bit2;

    signed_picture bit3;

    signed_picture bit4;

    signed_picture bit5;

    signed_picture bit6;

    signed_picture bit7;

    signed_picture bit8;

    signed_picture bit9;

    signed_picture bit10;

    unsigned_picture sa;

    unsigned_picture sb;

    signed_picture sum;

    signed_picture overflow;

    // values of a and b forendmodule
