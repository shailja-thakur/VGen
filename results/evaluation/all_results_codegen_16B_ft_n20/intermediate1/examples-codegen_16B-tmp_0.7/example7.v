// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The first half-adder is built using regular structural code.
assign sum = a ^ b;
// The second half-adder is built with a behavioral model.
assign cout = a & b;

endmodule
