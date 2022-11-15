// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two words and produces a sum.
module full_adder( 
input a, b,
output cout, sum );

// This is a half-adder that adds two words and produces a sum.
module sum_adder( 
input a, b,
output cout, sum );

// This is a full-adder that adds two words and produces a carry out.
module carry_adder( 
input a, b,
output cout, sum );

// This is a half-adder that adds two words and produces a carry out.
module carry_adder_2( 
input a, b,
output cout, sum );

// This is a full-adder that adds two words and produces a carry out.
module sum_adder_2( 
input a, b,
output cout, sum );

module processorendmodule
