// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Inputs are 40 bits and carry-out is 32 bits.
assign cout = sum + b + a + 0x80000000;

endmodule
