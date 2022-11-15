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


wire signed [8:0] sum [0:1]; // The two 8-bit numbers that are added
wire [8:0] carry; // The 2-bit, two-bit carry that are added

assign carry[0] =1'b1; // Initially, 2 is the carry.
assign carry[1] = 1'b0;


assign sum[0] = a[0] ^ b[0]; // The first bit of a is XORed with the first bit of b
assign sum[1] = a[1] ^ b[1]; // The second bit of a is XORed with the second bit of b

assign s[0] = sum[0];
assign s[1] = sum[1];

assign overflow = carry[1]; // The carry is the second to last carry. If it is 0 then it isendmodule
