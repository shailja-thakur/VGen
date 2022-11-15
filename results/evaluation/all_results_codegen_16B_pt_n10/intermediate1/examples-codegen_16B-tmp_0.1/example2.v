// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire cin, cout, sum;

// The carry-in is the carry-out of the previous cycle.
wire carry_in;

// The carry-out is the carry-in of the next cycle.
wire carry_out;

// The sum is the sum of the inputs.
wire sum;

// The inputs are the two bits to be added.
wire a, b;

// The outputs are the sum and carry-out.
// The carry-out is the carry-in of the next cycle.
void half_adder( 
input a, b,
output cout, sum )
{
  // The carry-in is the carry-out of the previous cycle.
  carry_in = carry_out;

  // The carry-out is the carry-in of the next cycle.
  carry_out = cin;

  // The sum isendmodule
