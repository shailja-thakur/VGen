// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Half adder is connected to both the input and output.
// Carry out is just a copy of the carry in bit.
assign cout = b;
assign sum = a ^ b;
endmodule
