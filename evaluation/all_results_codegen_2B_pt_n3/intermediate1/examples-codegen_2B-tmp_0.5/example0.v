// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The adder has a carry-out.
module adder(
input a, b,
output cout, sum, carry );

// The adder has a sum and carry-out.
module sum_and_carry(
input a, b,
output cout, sum, carry );

// The adder has a sum and no carry-out.
module sum_and_no_carry(
input a, b,
output cout, sum );

// The adder has a sum and a carry-out.
module sum_and_carry(
input a, b,
output cout, sum, carry );

// The adder has a carry-out.
module carry_out(
input a, b,
output cout, sum, carry );

// The adder has no sum and a carry-out.
module no_sum_and_carry(
inputendmodule
