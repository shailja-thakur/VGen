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


// 
// function s_adder(a, b, s, overflow)
//     s_adder.a = a
//     s_adder.b = b
//     s_adder.s = s
//     s_adder.overflow = overflow
// end
// end
// 

char s_adder(register char a, register char b, register char s, register char overflow)
{
    register char carry = 0;
    register int i;
    for(i = 7; i >= 0; i--)
    {
        carry = 0;
        carry = overflow;
        if(a & (1 << i))
        {
            carry = a & (1 << i) & (b & (1 << i) & 0x80);
        }
        if(carry)
        {
            carry = (a & (1 << i)endmodule
