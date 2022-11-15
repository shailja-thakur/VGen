// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder.
module full_adder( 
input a, b,
output cout, sum, carry );

// This is a half subtractor. A half subtractor subtracts two bits and produces a difference and carry-in.
module half_subtractor( 
input a, b,
output d, diff );

// This is a full subtractor.
module full_subtractor( 
input a, b,
output d, diff, carry );

// This is a half multiplier. A half multiplier multiplies two bits and produces a product and carry-out.
module half_multiplier( 
input a, b,
output c, prod );

// This is a full multiplier.
module full_multiplier( 
input a, b,
output c, prod, carry );

// This is a half mod. A half modendmodule
