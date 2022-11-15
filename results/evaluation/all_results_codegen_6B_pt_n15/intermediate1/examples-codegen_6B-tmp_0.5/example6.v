// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum, carry-out and overflow.
module full_adder( 
input a, b,
output cout, sum, carry_in );

// This is a full adder with carry-out. A full adder adds two bits and produces a sum, carry-out and overflow.
module full_adder_w_carry( 
input a, b,
output cout, sum, carry_in );

// This is a full adder with carry-out and overflow. A full adder adds two bits and produces a sum, carry-out, overflow and carry-in.
module full_adder_w_carry_and_carry_out( 
input a, b,
output cout, sum, carry_in );

// This is a full adder with carry-out and overflow. A full addendmodule
