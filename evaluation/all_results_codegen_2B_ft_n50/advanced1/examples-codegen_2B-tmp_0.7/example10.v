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



wire [7:0] adder_1;
wire [7:0] adder_2;
wire [7:0] s;
wire overflow_1;
wire overflow_2;

wire carry;

add_sub_8bit adders(
	.a(a),
	.b(b),
	.s(adder_1),
	.carry_out(carry)
);

add_sub_8bit adders1(
	.a(b),
	.b(a),
	.s(adder_2),
	.carry_out(carry_1)
);

full_adder_8bit adder_1(
	.a(adder_1),
	.b(carry_1),
	.carry_in(1'b0),
	.s(s),
	.overflow_endmodule
