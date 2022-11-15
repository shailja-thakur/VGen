// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module adder( 
input a, b, 
output cout, sum );

module adder_half_adder(
input a, b,
output cout, sum,
output carry_out );

module half_adder_adder(
input a, b,
output cout, sum,
output carry_out );

module half_adder_half_adder(
input a, b,
output cout, sum,
output carry_out );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b, 
output cout, sum,
output carry_out );

// This is a half adder. A half adder adds two bits and producesendmodule
