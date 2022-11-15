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

	wire [7:0] sum;
	wire [7:0] sum_overflow;
	wire [7:0] b_not;
	wire [7:0] a_not;
	wire [7:0] a_or_b;
	wire [7:0] sum_a_or_b;
	wire [8:0] sum_ab;
	wire [8:0] sum_ab_overflow;

	assign b_not = ~b + 1; // 2's complement of b
	assign a_not = ~a + 1; // 2's complement of a
	assign a_or_b = a | b; // a or b
	assign sum_a_or_b = a_or_b + b; // sum of a or b
	assign sum = sum_a_or_b[7endmodule
