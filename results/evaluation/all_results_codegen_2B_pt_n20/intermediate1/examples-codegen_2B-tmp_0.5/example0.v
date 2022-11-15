// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input carry_in;

input carry_out;

output carry_out_out;

// This is a full adder. A full adder adds two bits and produces a sum and carry-in.
module full_adder(
input a, b,
input carry_in,
output cout, sum );

input a_in;

input b_in;

input carry_in_in;

input carry_in_out;

input carry_out_in;

input carry_out_out;

output a_out;

output b_out;

input a_out_in;

input b_out_in;

input a_out_out;

input b_out_out;

input a_out_out_in;

input b_out_out_in;

// This isendmodule
