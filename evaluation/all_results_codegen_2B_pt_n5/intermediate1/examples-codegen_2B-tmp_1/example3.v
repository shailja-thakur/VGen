// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void half_adder_block( 
input a[8], output b[8],
output cout[8], sum[8] );

// To sum two half-words

void half_adder( const half_adder* me )
{
  // loop over packets.
  reg8 d0 = 0, d1 = 0, d2 = 0, d3 = 0;
  if (me->paused) return;  
  
  // Convert to bytes.
  
  // Pointers for reading, writing and swapping.
  
  reg8* a[8] = (reg8*)&a[0];
  reg8* b[8] = (reg8*)&b[0];
  reg8* sum[8] = (reg8*)&sum[0];
  
  for (int n=7; n>=0; n--endmodule
