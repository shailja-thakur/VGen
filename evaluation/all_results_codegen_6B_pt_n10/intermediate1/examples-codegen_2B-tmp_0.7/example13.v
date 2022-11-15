// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Inputs are raw 16-bits to be added.
// Output is a 16-bit sum.
// Output carry-out is a bit that indicates that the sum overflowed.
// A carry-out is when the sum is greater than the input.
// A carry-out is 1 if and only if the sum overflowed.
// Sum is the sum of the inputs; sum and carry-out will be set
// to the same value.

void logic()
{
  cout = a + b;
  sum = a + b;
}

void logic_and_carry()
{
  bool carry = a + b > 16;
  cout = a + b;
  sum = a + b;
  if (carry) sum = (sum << 1) + 1;
}

void logic_or_carry()
{
  bool carry = a +endmodule
