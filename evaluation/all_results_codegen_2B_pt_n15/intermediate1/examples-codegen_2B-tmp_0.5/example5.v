// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a half subtractor. A half subtractor subtracts two bits and produces a sum and carry-in.
module half_sub( 
input a, b,
output cout, sum );

// This is a half multiplier. A half multiplier multiplies two bits and produces a sum and carry-out.
module half_mul( 
input a, b,
output cout, sum );

// This is a half divisor. A half divisor divides two bits and produces a sum and carry-out.
module half_div( 
input a, b,
output cout, sum );

// This is a half modulus. A half modulus divides two bits and produces a sum and carry-out.
module half_mod( 
input a, b,
output cout, sum );

// This is a half shift left. A half shift left shifts the lowerendmodule
