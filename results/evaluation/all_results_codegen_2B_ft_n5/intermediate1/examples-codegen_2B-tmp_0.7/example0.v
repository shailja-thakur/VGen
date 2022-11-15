// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Each half adder has a carry in and a sum output.
// The carry in is the carry in bit and the sum output is the sum bit.
// The carry out is the carry out bit and the carry in bit is the carry in bit.

// Half adder 1
assign sum = a ^ b;
assign cout = a & b;

endmodule
