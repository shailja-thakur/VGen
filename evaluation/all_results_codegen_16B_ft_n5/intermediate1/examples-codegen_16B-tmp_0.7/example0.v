// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This uses a half adder, but explicitly calling the instances.
assign sum = a ^ b; // ^ is a bitwise xor
assign cout = a & b; // & is a bitwise and

endmodule
