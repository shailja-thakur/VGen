// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The addition of 'a' and 'b'
input adder_a( 
input a, input b,
output sum, signal carry );

// The carry-out of the addition
input carry_out( 
input a, input b,
output sum, signal carry );

// The output of the sum and carry-out
input sum_and_carry( 
input a, input b,
output carry, output sum );

module adder(
input a, b,
input sum, carry,
output cout );

half_adder adder = half_adder( a, b, sum, cout );
carry_out carry_out = carry_out( a, b, sum, carry );
sum_and_carry sum_and_carry = sum_and_carry( a, b, carry, sum );

// The adder module
module adderendmodule
