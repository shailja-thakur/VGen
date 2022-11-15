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


task main()
{
    int  A[8] = {0x3D, 0x8E, 0x9E, 0xAD, 0xAE, 0x00, 0x00, 0x00};
    int  B[8] = {0x00, 0x00, 0x88, 0xC6, 0x15, 0x00, 0x00, 0x99};
    int  s[8] = {0x80, 0x00, 0x7E, 0xDA, 0xAA, 0xF3, 0x00, 0x00}; 
    int  o[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

    
    signed_adder  a(a, b, s, o);
endmodule
