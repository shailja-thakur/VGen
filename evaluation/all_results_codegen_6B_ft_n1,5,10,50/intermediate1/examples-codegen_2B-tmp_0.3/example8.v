// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a half subtractor. A half subtractor subtracts two bits and produces a sum and borrow-in.
module half_sub( 
input a, b,
output cout, sum );

// This is a half multiplier. A half multiplier multiplies two bits and produces a sum and carry-in.
module half_mul( 
input a, b,
output cout, sum );

// This is a half divider. A half divider divides two bits and produces a sum and borrow-out.
module half_div( 
input a, b,
output cout, sum );

// This is a half modulo. A half modulo divides two bits and produces a sum and borrow-out.
module half_mod( 
input a, b,
output cout, sum );

// This is a half squaring. A half squaring multiplies two bits andendmodule
