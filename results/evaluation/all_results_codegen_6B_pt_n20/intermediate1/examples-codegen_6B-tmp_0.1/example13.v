// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a carry-out shifter. It shifts the carry-out bit to the left.
module shifter( 
input cout,
output cout_shifted );

// This is a carry-out shifter. It shifts the carry-out bit to the right.
module shifter_r( 
input cout,
output cout_shifted );

// This is a carry-out shifter. It shifts the carry-out bit to the left.
module shifter_l( 
input cout,
output cout_shifted );

// This is a carry-out shifter. It shifts the carry-out bit to the right.
module shifter_r_lendmodule
