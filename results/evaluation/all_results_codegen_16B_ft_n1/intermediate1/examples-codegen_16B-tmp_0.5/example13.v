// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the structural modelling.
assign sum = a ^ b; // A xor B
assign cout = a & b; // A and B

endmodule
