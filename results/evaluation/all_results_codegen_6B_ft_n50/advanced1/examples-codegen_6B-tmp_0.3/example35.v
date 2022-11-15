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


wire signed [8:0] b_signed = {b[7], b}; // the most significant bit of b is placed in the most significant bit of b_signed

wire signed [8:0] s_signed = {s[7], s}; // the most significant bit of s is placed in the most significant bit of s_signed

assign overflow = (a[7] & b_signed[7]) & ~s_signed[7]; // a and b are added and the final result is assigned to s. Overflow is detected by the carry bit.

assign s = {s[6:0], a[7] ^ b_signed[7]}; // the least significant bit of s is placed in the least significant bit of s_signed.

endmodule
