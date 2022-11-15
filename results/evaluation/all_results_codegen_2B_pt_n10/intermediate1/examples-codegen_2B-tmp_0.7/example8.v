// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void half_adder::execute( 
){
  // Add two bits together.
  sum.add( a, b );

  // Compute the carry-out.
  cout.set( sum.get_carry() );

  // Clear the carry bit.
  sum.clear_carry();
}

// =============================================================================
// DYNAMICALLY GENERATED MODULE IMPLEMENTATION:
// =============================================================================

void half_adder::execute()
{
  // Add two bits together.
  sum.add( a, b );

  // Compute the carry-out.
  cout.set( sum.get_carry() );

  // Clear the carry bit.
  sum.clear_carry();
}
endmodule
