// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// half_adder is a half-adder with a carry-out and a final carry-out.
// The state of the half-adder is (x,y,z,carry) where x is the input a,
// y is the input b, z is the output sum, and carry is the carry-out.
// The carry-out is a boolean that indicates whether error occurred.
// The half-adder adds two bits and produces a sum and carry-out.
// The carry-out is one-based, which is to say, a value of 1 is the carry.
// The sum of a and b is 2*a + b.
// The carry-out is the carry-out of the sum, 1 or 0.
// The carry-out is set to 1 if the sum is 1, 0 otherwise. The result is 0x80.
module half_adder_adder( 
input aendmodule
