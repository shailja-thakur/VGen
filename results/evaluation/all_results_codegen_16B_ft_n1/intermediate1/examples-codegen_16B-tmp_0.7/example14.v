// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the body of the half adder.

// The following statement is a half adder.
assign sum = a ^ b;
assign cout = a & b;

endmodule
