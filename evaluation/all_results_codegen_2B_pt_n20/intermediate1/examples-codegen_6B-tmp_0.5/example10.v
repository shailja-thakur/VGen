// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a full adder with carry-out.
module full_adder_with_carry( 
input a, b,
output cout, sum,
output carry );

// This is a half adder with carry-out.
module half_adder_with_carry( 
input a, b,
output cout, sum,
output carry );

// This is a full adder with carry-out.
module full_adder_with_carry_and_carry( 
input a, b,
output cout, sum,
output carry,
output carry2 );

// This is a half adder with carry-out.
module half_adder_with_carryendmodule
