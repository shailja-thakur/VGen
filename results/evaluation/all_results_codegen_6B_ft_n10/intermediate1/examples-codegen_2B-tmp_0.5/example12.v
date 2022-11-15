// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a half subtractor. A half subtractor subtracts two bits and produces a difference and carry-out.
module half_sub( 
input a, b,
output cout, diff );

// This is a half multiplier. A half multiplier adds two bits and produces a sum and carry-in.
module half_mul( 
input a, b,
output cout, sum );

// This is a half divider. A half divider subtracts two bits and produces a difference and carry-in.
module half_div( 
input a, b,
output cout, diff );

// This is a half modulo. A half modulo subtracts two bits and produces a difference and carry-in.
module half_mod( 
input a, b,
output cout, diff );

// This is the input and output of the full adder.
module fullendmodule
