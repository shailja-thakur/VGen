// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a half subtractor. A half subtractor subtracts two bits and produces a sum and carry-out.
module half_subtractor( 
input a, b,
output cout, sum );

// This is a half multiply. A half multiply by a constant produces a sum and carry-out.
module half_multiply( 
input a, b,
output cout, sum );

// This is a half division. A half division by a constant produces a quotient and carry-in.
module half_division( 
input a, b,
output cout, quotient, quotient_in ); 

// This is a half remainder. A half remainder by a constant produces a sum and carry-out.
module half_remainder( 
input a, b,
output cout, sum ); 

// This is a half negation. A half negendmodule
