// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input cin;

output cout;

input a, b;

input sum;

input carry;

input carry_out;

// The carry-out is the carry-out of the sum.
module carry_out( 
input cout, sum );

input cout;

input sum;

input carry;

input carry_out;

// The sum is the sum of the inputs.
module sum( 
input a, b,
output cout );

input a, b;

input cout;

input sum;

input carry;

input carry_out;

// The carry-out is the carry-out of the sum.
module carry_out( 
input cout, sum );

input cout;

input sum;

input carry;

input carry_out;

// The sum is theendmodule
