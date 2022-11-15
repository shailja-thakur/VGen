// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a[3], b[3],
output cout[3], sum[3] );

// This is a half subtractor. A half subtractor subtracts two bits and produces a difference and carry-in.
module half_sub( 
input a, b,
output cout, diff );

// The full subtractor subtracts two bits and produces a difference and carry-in.
module full_sub( 
input a[3], b[3],
output cout[3], diff[3] );

// This is a half mutator. A half mutator mutates a bit and produces a new output value.
module half_mut( 
input a, b,
output cout, mut );

// The full mutator mutates a bit and produces a newendmodule
