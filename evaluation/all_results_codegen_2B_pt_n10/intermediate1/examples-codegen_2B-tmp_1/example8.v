// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum.
module full_adder(
input a, b,
input cout_a, cout_b,
output sum );

// This is a MUX. This thing selects one bit of a or b depending on a number.
module sign_mux(
input a, b, int c, 
output cout, cc );

// This is a 32-bit multiply. I'm passing output A to the multiply.
module mul32_a(
input A, B, output C );

// The three LUTs. They're registered together.
input rar, eee, cer, tar, total;

module rar_mul(
input A, B, oc, ocand, ocor, ocrc, odivs,
output rcand, prod, prodendmodule
