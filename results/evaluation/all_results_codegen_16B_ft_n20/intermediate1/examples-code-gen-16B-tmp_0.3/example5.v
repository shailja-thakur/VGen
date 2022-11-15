// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The sum is the XOR of the two inputs.
assign sum = a ^ b;
// The carry-out is the AND of the two inputs.
assign cout = a & b;

endmodule
