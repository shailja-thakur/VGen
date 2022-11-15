// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2;

// The first XOR gate computes the sum.
xor_gate xor1( .a(a), .b(b), .sum(sum) );

// The second XOR gate computes the carry-out.
xor_gate xor2( .a(a), .b(b), .sum(cout) );

endmodule
