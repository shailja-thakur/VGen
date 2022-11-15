// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
assign sum = a ^ b;// xor two bits and assign it to output
assign cout = a & b;// and of two bits and assign it to carry-out
endmodule
