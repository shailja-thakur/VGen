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


assigning set on the first bit of a to s and ovrflr to 1 when the output overries the max positive range(Seven bits 1111111 shown as SSsssS)
assigning set on the first bit of b to s and ovrflr to 1 when the output overries the max positive range(Seven bits 1111111 shown as SSssS)
assigning OVFLR to ovrflr when all the bits signed addition has been performed , i.e when the output overries the max positive range(Seven bits 1111111 shown as SSssS)
assigning oVFLR to 1 when the output underflows the min negative range (Seven bits 00000000 shown as 000246)

assigning or of a and b to ovrflr when these are high(when their most significant bit is high)

assigning a to s when the two most significant bits of the calculated value are both high(resultendmodule
