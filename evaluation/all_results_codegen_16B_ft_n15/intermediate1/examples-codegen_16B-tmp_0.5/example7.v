// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// If a or b is 0, then the sum is just the bitwise or of the two inputs.
// If a or b is 1, then the sum is just the bitwise and of the two inputs.
assign sum = (a ^ b) ^ a;
assign cout = (a & b) ^ a;

endmodule
