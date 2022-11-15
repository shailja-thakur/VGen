// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Logic to be synthesized
and gate1(cout, a, b);
xor gate2(sum, a, b);
endmodule
