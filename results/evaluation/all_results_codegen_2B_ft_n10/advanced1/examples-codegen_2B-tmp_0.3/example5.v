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
wire [7:0] overflow;

assign carry[0] = 1'b0;

// adder_1bit
wire [7:0] sum;
wire [7:0] carry_1bit;

adder_1bit adder_1bit_0(
.a(a[7:0]),
.b(b[7:0]),
.sum(sum[7:0]),
.carry_in(carry[7:0]),
.carry_out(carry_1bit[7:0])
);

// adder_8bit
wire [7:0] sum_1bit;
wire [7:0] carry_1bit_1bit;

adder_8bit adder_8bit_0(
.a(a[7:0]),
.b(b[7endmodule
