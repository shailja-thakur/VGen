// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input carry_in, n;

// This is a full adder. A full adder adds two words, produces a sum and carry-out.
module full_adder( 
input a, b,
input carry_in,
output cout, sum );

input a_in, b_in, carry_in_in;

// This is a half subtractor. A half subtractor subtracts two bits and produces a sum.
module half_sub( 
input a, b,
output cout, sum );

input carry_in, n;

// This is a full subtractor. A full subtractor subtracts two words and produces a sum.
module full_sub( 
input a, b,
input carry_in,
output cout, sum );

input a_in, b_in, carry_in_in;

// This is a halfendmodule
