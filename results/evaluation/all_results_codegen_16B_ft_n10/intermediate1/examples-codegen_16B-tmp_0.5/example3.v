// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the structural modelling of a full adder.
assign sum = a ^ b; // XOR
assign cout = a & b; // AND

endmodule
