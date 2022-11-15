// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum, carry );

// This is a half subtractor. A half subtractor subtracts two bits and produces a difference and carry-out.
module half_subtractor( 
input a, b,
output cout, difference );

// This is a full subtractor. A full subtractor subtracts three bits and produces a difference and carry-out.
module full_subtractor( 
input a, b, c,
output cout, difference, carry );

// This is a half multiplier. A half multiplier multiplies two bits and produces a product and carry-out.
module half_multiplier( 
input a, b,
output cout, product );

// This is aendmodule
