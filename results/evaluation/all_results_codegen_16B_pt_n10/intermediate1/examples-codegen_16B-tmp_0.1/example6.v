// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

// The carry-in is the carry-out of the previous cycle.
assign carry_in = carry_out;

// The sum is the sum of the two inputs.
assign sum_out = a_in + b_in + carry_in;

// The carry-out is the carry-in of the next cycle.
assign carry_out = sum_out[2:0];

// The output is the sum of the two inputs.
assign cout = sum_out;

endmodule
