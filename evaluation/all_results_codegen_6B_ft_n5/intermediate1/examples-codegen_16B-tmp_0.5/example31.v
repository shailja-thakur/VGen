// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This uses two exclusive OR (XOR) gates to compute the sum.
assign sum = a ^ b;

// This uses an AND gate and an OR gate to compute the carry-out.
assign cout = a & b;

endmodule
