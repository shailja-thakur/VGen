// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// additional variables used
assign sum = a ^ b; 
assign cout = a & b;


endmodule
