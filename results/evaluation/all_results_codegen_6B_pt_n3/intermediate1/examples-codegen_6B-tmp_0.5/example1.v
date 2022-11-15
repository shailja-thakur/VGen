// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

#include "carry_adder.h"

// This is an adder with carry. A full adder adds two bits and produces a sum.
// The carry is propagated to the next adder.
module full_adder( 
input a, b,
output cout, sum,
output carry );

// This is a carry adder. A carry adder adds two bits and produces a sum and carry-out.
module carry_adder( 
input a, b,
output cout, sum,
output carry );

// This is a carry adder with carry. A full adder adds two bits and produces a sum.
// The carry is propagated to the next adder.
module full_carry_adder( 
input a, b,
output cout, sum,
output carry,
output carry_out );

// This is a carry adder with carry. Aendmodule
