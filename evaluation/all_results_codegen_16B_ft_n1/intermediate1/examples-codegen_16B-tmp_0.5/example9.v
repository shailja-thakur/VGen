// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This uses an exclusive OR (XOR) gate to compute the sum.
assign sum = a ^ b;
// The carry-out is the bitwise AND of the two inputs.
assign cout = a & b;

endmodule
