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

assign carry[0] = 1'b0;

// adder
full_adder_1bit adder1(a[0], b[0], carry[0], sum[0], carry[1]);
full_adder_1bit adder2(a[1], b[1], carry[1], sum[1], carry[2]);
full_adder_1bit adder3(a[2], b[2], carry[2], sum[2], carry[3]);
full_adder_1bit adder4(a[3], b[3], carry[3], sum[3], carry[4]);
full_adder_1bit adder5(a[4], b[4], carry[4], sum[4], carry[5]);
full_adderendmodule
