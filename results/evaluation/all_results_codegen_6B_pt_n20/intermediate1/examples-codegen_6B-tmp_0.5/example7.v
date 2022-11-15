// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum, carry-out and carry-in.
module full_adder( 
input a, b,
output cout, sum, carry_in );

// This is a carry-in adder. A carry-in adder adds two bits and produces a sum and carry-in.
module carry_in_adder( 
input a, b,
output cout, sum, carry_in );

// This is a carry-out adder. A carry-out adder adds two bits and produces a sum, carry-out and carry-in.
module carry_out_adder( 
input a, b,
output cout, sum, carry_out );

// This is a carry-both adder. A carry-both adder adds two bits and produces a sum, carry-out and carry-inendmodule
