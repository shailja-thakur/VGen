// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder.
module full_adder( 
input a, b,
output cout, sum, carry );

// This is a half subtractor.
module half_subtractor( 
input a, b,
output cout, sum );

// This is a full subtractor.
module full_subtractor( 
input a, b,
output cout, sum, carry );

// This is the full adder with carry-out.
module full_adder_with_carry( 
input a, b,
output cout, sum, carry );

// This is the full subtractor with carry-out.
module full_subtractor_with_carry( 
input a, b,
output cout, sum, carry );

// This is the full adder with carry-in.
module full_adder_with_carry_inendmodule
