// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a half subtractor. A half subtractor subtracts two bits and produces a sum and carry-out.
module half_subtractor( 
input a, b,
output cout, sum );

// This is a full subtractor. A full subtractor subtracts two bits and produces a sum and carry-out.
module full_subtractor( 
input a, b,
output cout, sum );

// This is a carry-out generator. The carry-out is the bit that is shifted out of the carry-out register.
module carry_out_generator( 
input cout,
output cout_out );

// This is a carry-out shifendmodule
