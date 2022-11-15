// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The full adder takes three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum, carry );

// The full subtractor takes three bits and produces a sum and carry-out.
module full_subtractor( 
input a, b, c,
output cout, sum, carry );

// The subroutine that reads inputs from file, computes the sum and carry-out,
// and writes the sum and carry-out to file.
module adder(
input a,
output sum, carry );

// The subroutine that reads inputs from file, computes the sum and carry-out,
// and writes the sum and carry-out to file.
module subtractor(
input a,
output sum, carry );

// The subroutine that reads inputs from file, compendmodule
