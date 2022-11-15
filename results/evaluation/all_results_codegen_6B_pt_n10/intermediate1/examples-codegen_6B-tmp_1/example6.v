// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Next, we have a full adder. A full adder adds two bits and
// ANDs the carry-out from each call together. It produces a sum
// of the bits that have been anded together.
#include "adder.h"

#include "adder_intrinsics.hax"

function int full_adder(
input a,
input cout,
input sum,
output b,
output carry_out
)
{
    if ( handle_condition( a ) ) return sum;

    if ( a( a_num_bits - 1 ) & a( a_num_bits - 1 ) )
    {
        sum( sum( 2, a_num_bits - 2 ) );
   }
    else
    {
        // Overflow either to carry-out buffer or to sum.
        sum( sum( 1, a_numendmodule
