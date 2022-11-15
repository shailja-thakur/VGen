// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The input pins are the two bits to be added.
assign cout = half_adder.sum;

// The output pins are the sum and the carry-out.
assign half_adder.sum = a + b;
assign half_adder.carry = a + b > 9;

endmodule
