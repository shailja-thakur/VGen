// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Halfadder bit 0 = sum; halfadder bit 1 = carry-out
// Bits definitions:
//   0    output bit 0 = sum bit
//   1    output bit 0 = carry out bit
 //   2-7  montgomery (mod2^5) bit number
struct HalfAdder {
@MACHOP R( a,   b )
#if ZCYCLES > 0
  RALOCDATA;
#endif
} 
w_sum {
R( 0 )
#if ZCYCLES == 0;  // no factor COEFF
zmul lor( l,  M(z) )  ;// Portal LOR factor l .. perform Montgomery multiply for l
#endif  // ZCYCLES == 0
R( 1 ) ;// output logic: 1 bit
} 
w_carry {
R( 2 )
#if Zendmodule
