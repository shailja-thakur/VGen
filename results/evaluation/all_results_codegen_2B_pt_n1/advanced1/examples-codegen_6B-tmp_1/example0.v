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


#const a = (1<<8)-1; // 0x7F = 127
#const b = (1<<8)-2; // 0x7E = 126
#const firstBitHigh = 153; // 0x7F = 127 but is down nice and easy
#const secondBitHigh = 125; // 0x7F = 127 but is low NICE EVEN !


if (a == firstBitHigh)
{
    if (b == secondBitHigh)
    {
        s[7:0] = 0; // correct!
    } else {
        s[7:0] = firstBitHigh; // correct!
    }
    
} else {
    if (b == secondBitHigh)
    {
        s[7:0] = a;
    } else {
        s[7:0] = a + b; // okay, FIB violatedendmodule
