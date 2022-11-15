// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a carry-out shifter. It shifts the carry-out of a half adder to the right.
module shift_carry( 
input cout,
output cout_shifted );

// This is a carry-out shifter. It shifts the carry-out of a full adder to the right.
module shift_carry_full( 
input cout,
output cout_shifted );

// This is a carry-out shifter. It shifts the carry-out of a half adder to the left.
module shift_carry_left( 
input cout,
output cout_shifted );

// This is a carry-out shifter. It shifts the carryendmodule
