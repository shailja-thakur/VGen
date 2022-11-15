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



#define _SIGNED_ADD(a, b, s) \
    s = a + b; \
    if((a>0?1:-1) != (b>0?1:-1) && (s>0x80?1:-1) != (s&0x80?1:-1)) { \
        overflow = 1; \
    }

always @(posedge clk or negedge rst)
    if(rst)
    {
        a = 0;
        b = 0;
        s = 0;
        overflow = 0;
    }
    else if (a <= 127 and b <= 127)
    {
        _SIGNED_ADD(a, b, s);
    }
    else if (a >= -128 and b >= -128)
    {
        _SIGNED_ADD(a,endmodule
