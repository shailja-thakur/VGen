// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder will carry out the sum of two bits.
function half_adder_carry( a, b, cout );

// The half adder will add two bits.
function half_adder_sum( a, b, cout );

// The half adder will return the sum.
function half_adder_return( a, b, cout );

// This is a full adder. A full adder adds a number of bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// The full adder will carry out the sum of two bits.
function full_adder_carry( a, b, cout );

// The full adder will add two bits.
function full_adder_sum( a, b, cout );

// The full adder will return the sum.
function fullendmodule
