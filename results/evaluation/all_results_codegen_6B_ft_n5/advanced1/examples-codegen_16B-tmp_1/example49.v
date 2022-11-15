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


sign_xor_nxor(a[7],b[7],s[7],c1); // assign the nxor gate values
sign_xor_nxor(a[6],b[6],c1,s[6]);
sign_xor_nxor(a[5],b[5],c1,c2);
sign_xor_nxor(a[4],b[4],c2,s[5]);

sign_xor_nxor(a[3],b[3],c2,c3);
sign_xor_nxor(a[2],b[2],c3,s[4]);

sign_xor_nxor(a[1],b[1],c3,c4);
sign_xor_nxor(a[0],b[0],endmodule
