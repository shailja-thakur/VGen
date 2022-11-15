// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_in, carry_out;

// The carry bit is the same as the carry_in input
wire carry = carry_in;

// This is the half adder function
// It takes two bits as input and produces a sum and carry-out
// The sum bit is the same as the sum output
// The carry-out bit is the same as the carry_out input
void half_adder( 
input a, b,
output cout, sum ) {
    // The first bit is added to the carry-in bit.
    // If carry-in is 1, then the value of the first bit is added to the carry-out bit.
    // If carry-in is 0, then the value of the first bit is added to the sum bit.
    // The carry-out bit is the same as the carry_in bit.
    // The sum bit is the sameendmodule
