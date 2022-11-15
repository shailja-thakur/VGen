// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a carry-out shifter. It shifts the carry-out bit to the left and
// produces the carry-out.
module carry_out_shifter( 
input cout,
output cout_out );

// This is a carry-out shifter. It shifts the carry-out bit to the right and
// produces the carry-out.
module carry_out_shifter_rev( 
input cout,
output cout_out );

// This is a carry-out shifter. It shifts the carry-out bit to the right and
// produces the carry-out.
module carry_out_shifter_rev2( 
input cout,
output coutendmodule
