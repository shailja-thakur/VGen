// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

// The carry-in is the carry-out of the previous cycle.
assign carry_in = carry_out;

// The sum-in is the sum of the two inputs.
assign sum_in = a_in + b_in;

// The carry-out is the carry-in of the next cycle.
assign carry_out = carry_in;

// The sum-out is the sum of the two inputs.
assign sum_out = sum_in + carry_in;

// The output is the sum-out.
assign cout = sum_out;

endmodule
