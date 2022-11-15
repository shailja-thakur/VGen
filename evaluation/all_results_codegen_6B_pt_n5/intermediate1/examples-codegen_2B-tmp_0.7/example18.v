// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The adder will add the two inputs, add the carry and the sum of the two inputs.
module adder( 
input a, b,
output cout, sum );

module shift_right_by_one( 
input a,
output b );

module shift_left_by_one( 
input a,
output b );

module adder_to_adder( 
input a, b,
output c, d );

module adder_to_adder_with_carry( 
input a, b,
output c, d,
output e, f );

module adder_to_adder_with_carry_and_sum( 
input a, b,
output c, d,
output e, f,
output g, h );

module adder_to_adder_with_carry_and_sum_with_endmodule
