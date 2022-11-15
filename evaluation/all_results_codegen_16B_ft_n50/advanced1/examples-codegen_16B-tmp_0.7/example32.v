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


assign overflow = (((~(a[7] ^ b[7])) & s[7]) | ((~(a[7] ^ s[7])) & b[7]));
assign s[0] = a[0] ^ b[0] ^ overflow;
assign s[1] = a[1] ^ b[1] ^ overflow;
assign s[2] = a[2] ^ b[2] ^ overflow;
assign s[3] = a[3] ^ b[3] ^ overflow;
assign s[4] = a[4] ^ b[4] ^ overflow;
assign s[5] = a[5] ^ b[5] ^ overflow;
assign s[6] = a[6] ^ b[6] ^ overflow;
assign s[7] = a[7] ^ b[7endmodule
