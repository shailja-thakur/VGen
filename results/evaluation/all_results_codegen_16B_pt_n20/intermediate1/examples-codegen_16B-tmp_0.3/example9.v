// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_plus_b, a_minus_b, sum_out;

assign a_plus_b = a + b;
assign a_minus_b = a - b;

assign sum_out = a_plus_b + a_minus_b;

endmodule
