// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_i, b_i, sum_i, carry_out;

// The carry-in is the carry-out of the previous cycle.
assign carry_in = carry_out;

// The sum is the sum of the bits.
assign sum = sum_i;

// The new carry-out is the carry-in of the current cycle.
assign carry_out = carry_in;

// The new sum is the sum of the bits and the carry-out.
assign sum_i = (a_i + b_i + carry_out);

// The new carry-out is the carry-in of the current cycle.
assign carry_out = carry_in;

// The new a is the a_i and the carry-out.
assign a_i = a;

// The new b is the b_endmodule
