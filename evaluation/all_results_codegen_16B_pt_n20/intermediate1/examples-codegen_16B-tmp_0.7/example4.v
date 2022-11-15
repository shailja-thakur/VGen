// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder(
input a, b, c,
output cout, sum );

// This is a half carry-adder. A half carry-adder adds two bits and produces a sum and carry-out.
// It also updates the carry-in bit based on the carry-out from the previous addition. 
module half_carry_adder( 
input a, b,
output cout, sum, carryin );

// This is a full carry-adder. A full carry-adder adds three bits and produces a sum and carry-out.
// It also updates the carry-in bit based on the carry-out from the previous addition. 
module full_carry_adder( 
input a, b, c,
output cout, sum, carryin );

// Thisendmodule
