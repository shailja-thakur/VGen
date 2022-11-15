// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// internal wires
wire xor_out;
wire and_out;

// compute sum
xor xor_1(sum, a, b);

// compute carry-out
and and_1(xor_out, a, b);
and and_2(and_out, xor_out, a);
or or_1(cout, and_out, and_out);

endmodule
