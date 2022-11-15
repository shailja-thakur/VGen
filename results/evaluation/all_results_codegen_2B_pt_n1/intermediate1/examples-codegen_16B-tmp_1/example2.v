// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

xor gate_1(sum, a, b); //Because this is an exclusive OR'd with one of the operands, the output will be 1 iff ONLY one of the operands are 1. (i.e. "logical XOR"
xor gate_2(cout, a, b); //Logical XOR's will result in a 1 iff the inputs are equal.

endmodule
