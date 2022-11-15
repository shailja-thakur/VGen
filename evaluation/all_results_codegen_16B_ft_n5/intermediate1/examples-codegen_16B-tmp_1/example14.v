// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign sum = a ^ b; // (a xor b) - E.g. 5 xor 3 = 8, and 8 + 1 = 9
assign cout = a & b; // (a and b) - E.g. 4 & 1 = 4

endmodule
