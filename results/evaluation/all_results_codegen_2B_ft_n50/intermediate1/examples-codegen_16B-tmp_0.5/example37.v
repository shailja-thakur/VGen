// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the output
assign sum = a ^ b;
// This is the carry out bit
assign cout = a & b;

endmodule
