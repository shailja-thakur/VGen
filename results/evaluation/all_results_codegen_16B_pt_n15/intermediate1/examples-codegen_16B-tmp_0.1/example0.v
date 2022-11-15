// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

// This is the carry-in register.
reg carry_in;

// This is the sum register.
reg sum;

// This is the carry-out register.
reg carry_out;

// This is the output register.
reg cout;

// This is the half adder.
half_adder( 
input a, b,
output cout, sum )
{
  // This is the carry-in register.
  carry_in = 0;

  // This is the sum register.
  sum = 0;

  // This is the carry-out register.
  carry_out = 0;

  // This is the output register.
  cout = 0;

  // This is the half adder.
  sum = a + b + carry_in;endmodule
