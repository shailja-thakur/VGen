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


assign s[0] = a[0] ^ b[0];

xor (s[1], a[1], b[1]);
xor (w1, a[2], b[2]);
not (w2, w1);
xor (w3, a[3], b[3]);
xor (w4, w2, w3);
not (w5, w4);
xor (w6, a[4], b[4]);
xor (w7, w5, w6);
not (w8, w7);
xor (w9, a[5], b[5]);
xor (w10, w8, w9);
not (w11, w10);
xor (w12, a[6], b[6]);
xor (w13, w11, w12);
not (endmodule
