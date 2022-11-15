// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

// The carry-in is the carry-out of the previous cycle.
assign carry_out = carry_in;

// The sum-out is the sum of the two inputs.
assign sum_out = a_in + b_in + carry_out;

// The carry-out is the carry-out of the addition.
assign carry_in = sum_out[2:0];

// The sum is the sum of the two inputs.
assign a_in = a;
assign b_in = b;

// The output is the sum and carry-out.
assign cout = sum_out + carry_out;

endmodule
