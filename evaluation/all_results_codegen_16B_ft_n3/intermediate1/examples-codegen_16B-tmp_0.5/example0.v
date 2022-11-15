// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a ripple carry adder. It is a 4-bit adder where the output is the sum.
// The carry out is the carry-out.
assign sum = a ^ b;
assign cout = a & b;

endmodule
