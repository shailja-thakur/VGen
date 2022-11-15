// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

// This is the carry-in register.
reg carry_in;

// This is the sum register.
reg sum;

// This is the output register.
reg out;

// This is the carry-out register.
reg carry_out;

// This is the half adder.
void half_adder( 
input a, b,
output cout, sum )
{
  // This is the carry-in register.
  carry_in = 1;

  // This is the sum register.
  sum = a + b + carry_in;

  // This is the output register.
  out = sum;

  // This is the carry-out register.
  carry_out = sum >> 1;

  // This is the output.
  cout = outendmodule
