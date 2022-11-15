// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Conceptually, the two inputs are treated as a single input,
// then bits are added together.
output 
carry = sum + b;
output 
sum = a + carry;
// The final output is the sum.

// This is a full adder. A full adder adds two inputs.
// The -1 is subtracted from the truth table to make the result
// zero when both inputs are zero. The final output is the sum.
module full_adder( 
input a, b,
output cout, sum );
// The truth table looks like this:
// a b | 0 0 | 1 1 | 0 1 | 1 0 | 0 -1 | 1 -1 |
// +---+---+---+---+---+---+---+---+---+---+---+
// 0 0 | 0 0 | 0 1 | 1 1 | 1 1 | 1 0 | 0endmodule
