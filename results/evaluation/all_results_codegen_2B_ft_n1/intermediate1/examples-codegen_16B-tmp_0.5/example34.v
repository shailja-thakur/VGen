// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the function that adds two bits. It uses the formula:
// sum = a xor b
assign sum = a ^ b;

// This is the function that adds two bits. It uses the formula:
// cout = a and b
assign cout = a & b;

endmodule
