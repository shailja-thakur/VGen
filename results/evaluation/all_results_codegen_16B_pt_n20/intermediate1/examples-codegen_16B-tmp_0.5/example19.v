// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Assign cout = a + b + carry_in
assign cout = a + b + carry_in;

// Assign sum = a + b
assign sum = a + b;

// Assign carry_out = carry_in
assign carry_out = carry_in;

endmodule
