// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2;

// The first XOR gate computes the sum.
xor( w1, a, b );

// The second XOR gate computes the carry-out.
xor( sum, w1, b );

// The AND gate computes the carry-out.
and( cout, a, b );

endmodule
