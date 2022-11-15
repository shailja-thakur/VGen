// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

half_adder( 0, 0 );

// This module adds three bits and produces a sum of seven bits with the carry
// in bit 60 according to a given set of parity bits.
module adds_parity_bits( 
input a_r, a_n, carry_in,
input b_r, b_n, carry_in,
output cout, sum );

adds_parity_bits( 56, 56, 56, 64, 64, 56, 0, adds_parity_bits.PARITY;

half_adder( adds_parity_bits.PARITY, adds_parity_bits.PARITY );

// Observe that a call to the carry out port has eight parameters. Each one is a register value
// & the bit in the register, given by bit in register[ 1...7].
// Note that takes register[0] as the parameterendmodule
