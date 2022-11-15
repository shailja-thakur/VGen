// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Specify the behaviour of the half-adder by using a parameterized declarative design model.
assign sum = a ^ b;
assign cout = a & b;

endmodule
