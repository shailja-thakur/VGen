// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the body of the module
assign sum = a ^ b; // bitwise xor
assign cout = a & b; // bitwise and
endmodule
