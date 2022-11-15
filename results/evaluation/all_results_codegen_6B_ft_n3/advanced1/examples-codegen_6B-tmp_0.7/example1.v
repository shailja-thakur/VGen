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


// intermediate carry to carry the carry of the 4 full adders
// Intermediate carrys are shifted right by 1 position.
// Two highest bits of intermediate carry is the overflow bit.

wire [8:0] intermediate_carry;

// Full adders for a signed adder
assign s[0] = a[0] ^ b[0]; 
assign intermediate_carry[0] = a[1] ^ b[1];
assign s[1] = a[1] ^ b[1];
assign intermediate_carry[1] = a[2] ^ b[2];
assign s[2] = a[2] ^ b[2];
assign intermediate_carry[2] = a[3] ^ b[3];
assign s[3] = a[3] ^ b[3];
assign intermediate_carry[3] = a[endmodule
