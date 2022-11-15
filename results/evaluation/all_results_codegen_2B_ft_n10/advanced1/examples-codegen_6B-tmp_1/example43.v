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


// add a high to a low and keep the carry in the same spot 

xor(carry, a[7], b[7]);
fulladder fa00(a[0], b[0], 1'b0, s[0], t[0]);
fulladder fa0x1(a[1], b[1], t[0], s[1], t[1]);
fulladder fa02(a[2], b[2], t[1], s[2], t[2]);
fulladder fa0n1(a[3], b[3], t[2], s[3], t[3]);
fulladder fa03(a[4], b[4], t[3], s[4], t[4]);
fulladder fa05(a[5], b[5], t[4], s[5], t[5]);
fulladder fa06(aendmodule
