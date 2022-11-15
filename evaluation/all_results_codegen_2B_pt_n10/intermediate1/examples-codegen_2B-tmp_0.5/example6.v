// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum, carry );

// This is a multiplyer. A multiplyer multiplies two bits and produces a sum.
module multiplyer( 
input a, b,
output cout, sum );

// This is a divideer. A divideer divides three bits and produces a carry-out.
module divider( 
input a, b,
output cout, carry );

// This is a modulo. A modulo divides three bits and produces a carry-out.
module modulo( 
input a, b,
output cout, carry );

// This is a and. A and performs an AND operation on three bits.
module and( 
input a, b,
output coutendmodule
