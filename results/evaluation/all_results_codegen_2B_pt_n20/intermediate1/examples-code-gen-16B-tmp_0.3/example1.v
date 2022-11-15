// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2;

// The XOR gate is used to produce the sum.
xor_gate xor1( .a(a), .b(b), .sum(sum) );

// The AND gate is used to produce the carry-out.
and_gate and1( .a(a), .b(b), .cout(cout) );

endmodule
