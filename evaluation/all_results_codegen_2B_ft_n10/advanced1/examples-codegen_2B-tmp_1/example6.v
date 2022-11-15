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


wire signed_sum;
wire signed_sum_overflow;

// module for the addition operator
xor(signed_sum, a,b);

assign signed_sum_overflow = (&signed_sum)&&(&adj(-b));

// sum wire definition
wire signed_adder_output;

// adders for the four bit string adders

add sum0(
	.a(a[0]), 
	.b(b[0]), 
	.sum(signed_adder_output),
	.overflow(signed_sum_overflow)	
); 

add sum1(
	.a(a[1]), 
	.b(b[1]), 
	.sum(signed_adder_output),
	.overflow(signed_sum_overflow)
);

add sum2(
	.a(endmodule
