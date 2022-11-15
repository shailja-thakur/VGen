// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum );

// This is a subtractor. A subtractor subtracts two bits and produces a difference and carry-out.
module subtractor( 
input a, b,
output cout, diff );

// This is a multiplier. A multiplier multiplies two bits and produces a product and carry-out.
module multiplier( 
input a, b,
output cout, prod );

// This is a divider. A divider divides two bits and produces a quotient and carry-out.
module divider( 
input a, b,
output cout, quo );

// This is a modulo. A modulo divides two bits and produces a remainder and carry-out.
module modendmodule
