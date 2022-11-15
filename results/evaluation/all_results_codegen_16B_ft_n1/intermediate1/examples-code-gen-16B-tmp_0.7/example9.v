// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire c1; // Carry bit

xor(sum, a, b);
and(c1, a, b);

or(cout, c1);

endmodule
