// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the function that adds two bits.
assign sum = a ^ b;
// This is the function that produces the carry-out bit.
assign cout = a & b;

endmodule
