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


wire [7:0] carry;
wire [7:0] sum;
wire overflow;

// carry is the carry bit from the adder
// sum is the sum of the two inputs
// overflow is the sign of the overflow

assign carry[0] = 1'b0;
assign overflow = carry[7];

// carry[7] is the carry out of the adder
// sum[7] is the sum of the two inputs
// sum[7] is the sum of the two inputs

assign sum[7] = a[7] ^ b[7];
assign sum[6] = a[6] ^ b[6] ^ carry[7];
assign sum[5] = a[5] ^ b[5] ^ carry[6];
assign sum[4] = a[4] ^ b[4] ^ carry[5endmodule
