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




// a must be different than b, and s must be different than a
// thus, if one of the bools is true, we know that a and b are different and not aliased. We return whether or not the signed a and b overflow, and assign that to the output. 
int s_overflow(int a, int b)
{
    int s = a + b;
    if ((s & 0xFF00) == 0 && (a & 0xFF00) == 0x8000 && (b & 0xFF00) == 0x8000) {
        return 1;
    }
    if ((s & 0xFF00) == 0xFF00 && (a & 0xFF00) == 0x8000 && (b & 0xFF00) == 0x7F00) {
        return 0;
    }
    return -1;

}
endmodule
