// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, a_out, b_out, sum_out;

// The carry-in is set to 1 if a or b is 0.
wire carry_in;

// The carry-out is set to 1 if the sum has overflowed.
wire carry_out;

// The sum is the sum of a and b.
wire sum;

always @(posedge clk) {
	// Set carry-in to 1 if a or b is 0.
	carry_in = (a_in == 0 || b_in == 0);

	// Set carry-out to 1 if the sum has overflowed.
	carry_out = (sum > 1);

	// Set sum to the sum of a and b.
	sum = (a_in + b_in);

	// Set a_out to the sum, and bendmodule
