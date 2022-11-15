// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// primary is sum
assign sum = a ^ b;

// secondary is carry out
assign cout = a & b;

endmodule
