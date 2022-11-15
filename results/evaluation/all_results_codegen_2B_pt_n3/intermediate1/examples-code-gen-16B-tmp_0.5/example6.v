// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_xor_b;
wire a_and_b;

// The XOR gate is used to calculate the sum.
xor( a_xor_b, a, b);

// The AND gate is used to calculate the carry-out.
and( a_and_b, a, b);

// The OR gate is used to calculate the sum.
or( cout, a_and_b, a_and_b);

endmodule
