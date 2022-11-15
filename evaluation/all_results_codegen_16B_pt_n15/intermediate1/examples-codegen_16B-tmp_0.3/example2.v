// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_in, carry_out, sum_out;

assign cout = carry_out;

assign carry_out = carry_in;

assign sum_out = sum;

assign carry_in = a & b;

assign sum = carry_in | (a ^ b);

endmodule
