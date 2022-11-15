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


assign s[0] = a[0] ^ b[0]; // xor of a[0] and b[0] gives the least significant bit of s.

assign s[1] = a[1] ^ b[1]; // xor of a[1] and b[1] gives the next least significant bit of s.

assign s[2] = a[2] ^ b[2]; // xor of a[2] and b[2] gives the next least significant bit of s.

assign s[3] = a[3] ^ b[3]; // xor of a[3] and b[3] gives the next least significant bit of s.

assign s[4] = a[4] ^ b[4]; // xor of a[4] and b[4] gives the next least significant bit of s.

endmodule
