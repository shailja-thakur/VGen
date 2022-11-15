// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The output is the sum.
output sum( cout, sum );

// The output is the carry-out.
output carry_out( cout, sum );

// The sum is the carry-out.
input sum( cout, sum );

// The carry-out is the sum.
output carry_out( sum, cout );


// The half adder adds two bits to produce a sum.
function half_adder( 
input a, b,
output cout, sum );

// The half adder adds two bits to produce a sum.
// The output is the sum.
output half_adder( 
input a, b,
output cout, sum );

// The half adder adds two bits to produce a sum.
// The output is the sum.
output half_adder( 
input a, b,
output cout, sum );

// Theendmodule
