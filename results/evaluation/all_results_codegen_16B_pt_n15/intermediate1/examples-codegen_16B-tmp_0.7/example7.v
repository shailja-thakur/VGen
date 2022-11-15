// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two numbers and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a two-input adder. A two-input adder adds three bits and produces a sum and carry-out.
module two_input_adder( 
input a, b,
output cout, sum );

// This function produces a sum and a carry-out.
module add_half_adder( 
input a, b,
output cout, sum );

// This function produces a sum and a carry-out.
module add_full_adder( 
input a, b,
output cout, sum );

// This function produces a sum and a carry-out.
module add_two_input_adder( 
input a, b,
output coutendmodule
