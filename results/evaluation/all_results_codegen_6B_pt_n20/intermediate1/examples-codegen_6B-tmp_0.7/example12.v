// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Outputs the sum and carries out.
function half_adder_out( input ){
  var x = a + b + carry_out;
  carry_out = x >> 32;
  cout = x & 0xffffffff;
}

// The bit-wise sum of a and b.
function bit_sum( a, b ){
  var x = a + b;
  carry_out = x >> 32;
  return x & 0xffffffff;
}

// The bit-wise sum of a and b with carry-out.
function bit_sum_with_carry_out( a, b, carry_out ){
  var x = a + b + carry_out;
  carry_out = x >> 32;
  return x & 0xffffffff;
}

// The bit-wise sum of a and b withendmodule
