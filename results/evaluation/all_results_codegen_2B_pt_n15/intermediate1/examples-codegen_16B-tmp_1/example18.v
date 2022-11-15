// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Design implementation of a half adder.
xor(q1, a, b); // Compute between a and b
xor(sum, q1, cb); // Compute the sum of a and b
or(cb, w1, w2); // Compute the carry-out of the sum. The carry-out is computed as the OR of w1 and w2.
endmodule
