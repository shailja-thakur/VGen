// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds a bit and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum, carry );

// This is a half subtractor. A half subtractor subtracts a bit from a sum and produces a carry-out.
module half_subtractor( 
input a, b,
output cout, carry );

// This is a full subtractor. A full subtractor subtracts a bit from a sum and produces a carry-out.
module full_subtractor( 
input a, b,
output cout, carry );

// This is a half multiplier. A half multiplier multiplies a bit and produces a sum and carry-out.
module half_multiplier( 
input a, b,
output cout, sum );

// This is a full multiplier. Aendmodule
