// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_inst( a, b )
{
  var carry = 0;
  var sum = 0;
  var i = 0;

  // Compute the sum while maintaining the carry-out.
  while( i < 16 )
    {
      sum = (sum + a) + b + carry;
      carry = sum >> 16;
      a = sum & 0xffff;  
      b = i + 1;
      i = b;
    }

  // Compute the carry and the sum.
  carry = a + b + carry;
  sum = (carry & 0xffff) + (sum << 16);
  carry = sum >> 16;

  // Output the results.
  cout = sum & 0xffff;
  return carry;
}

// Test the half adder.
def half_adder_test( aendmodule
