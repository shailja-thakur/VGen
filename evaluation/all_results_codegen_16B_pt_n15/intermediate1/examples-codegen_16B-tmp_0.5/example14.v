// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Wire up the inputs and outputs
wire a_in, b_in, cout_out, sum_out;

// Create a wire instance for the output signal
wire cout;

// Create the logic block
half_adder( a_in, b_in, cout_out, sum_out )
{
  // If both bits are 1, then the sum is 1 and the carry-out is 0.
  if (a_in == 1 && b_in == 1)
  {
    cout = 1;
    sum = 1;
  }
  // If both bits are 0, then the sum is 0 and the carry-out is 1.
  else if (a_in == 0 && b_in == 0)
  {
    cout = 0;
    sum = 0;
  }
  // If only one bit is 1, then the sumendmodule
