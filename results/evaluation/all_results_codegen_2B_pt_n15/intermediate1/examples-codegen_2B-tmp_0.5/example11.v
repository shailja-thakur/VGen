// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_in, b_in, cin;
output cout_out, sum_out;

// This is the sum and carry-out of the half-adder.
module sum_carry_out(
input a_in, b_in, cin,
output sum_out, cout_out);

// This is the input of the sum_carry_out module.
input sum_in;

// The output of the sum_carry_out module.
output sum_out;

// The input of the sum_carry_out module.
input sum_in;

// The output of the sum_carry_out module.
output sum_carry_out_out;

// The input of the sum_carry_out module.
input sum_carry_out_in;

// The output of the sum_carry_out module.
output sum_endmodule
