// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The inputs to the half adder.
wire a, b;

// The outputs of the half adder.
wire cout, sum;

// The carry-out of the half adder.
wire carry;

// The full adder.
full_adder( a, b, cout, sum, carry );

// The outputs of the full adder.
wire out;

// The carry-out of the full adder.
wire out_carry;

// The carry-out of the full adder.
wire carry_out;

// The half adder.
half_adder( a, b, cout, sum );

// The outputs of the half adder.
wire out;

// The carry-out of the half adder.
wire out_carry;

// The carry-out of the half adder.
wire carry_outendmodule
