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

// adder_1bit
adder_1bit adder_1bit_a(a[0], b[0], carry[0], sum[0], carry[1]);
adder_1bit adder_1bit_b(a[1], b[1], carry[1], sum[1], carry[2]);
adder_1bit adder_1bit_c(a[2], b[2], carry[2], sum[2], carry[3]);
adder_1bit adder_1bit_d(a[3], b[3], carry[3], sum[3], carry[4]);
adder_1bit adder_1bit_e(a[4], b[4], carry[4endmodule
