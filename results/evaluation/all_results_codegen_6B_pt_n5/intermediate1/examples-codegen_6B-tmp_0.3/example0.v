// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum, carry_out );

// This is a carry-out shifter. A carry-out shifter shifts a carry-out bit to the left.
module carry_out_shifter( 
input cout,
output cout_out );

// This is a carry-in shifter. A carry-in shifter shifts a carry-in bit to the right.
module carry_in_shifter( 
input cout,
output cout_in );

// This is a carry-in shifter. A carry-in shifter shifts a carry-in bit to the right.
module carry_in_shifter( 
input cout,
output cout_in );

// This is a carryendmodule
