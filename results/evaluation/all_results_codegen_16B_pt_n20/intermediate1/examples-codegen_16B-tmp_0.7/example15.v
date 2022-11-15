// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
output cout;
input a, b;
integer sum;
// The four states are:
// 00: output = 0, carry = 0
// 01: output = 0, carry = 1
// 10: output = 1, carry = 0
// 11: output = 1, carry = 1
// In the circuit below, the carry-out is always generated, and the input a and b are always generated.
// This means that the output is always generated, and the sum is always generated.
// Note that the output goes to cout.

// For the four states, the output is:
// 00: cout = 0.
// 01: cout = 0.
// 10: cout = a.
// 11: cout = b.

// For the four states, the sum is:
// 00: sum = a + b.
// 01: sum = a.
// 10: sum = a.endmodule
