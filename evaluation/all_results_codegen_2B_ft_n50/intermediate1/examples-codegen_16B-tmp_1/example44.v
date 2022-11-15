// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign sum = a ^ b; // a XOR b = sum

assign cout = a & b; // and operator for 2-bit in bit position positions.

endmodule
