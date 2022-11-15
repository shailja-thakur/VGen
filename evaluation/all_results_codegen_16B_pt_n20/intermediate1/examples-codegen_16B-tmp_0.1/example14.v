// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

assign a_in = a;
assign b_in = b;

assign sum_out = (a_in + b_in) + carry_out;
assign carry_out = (a_in + b_in) > 15;

assign cout = sum_out;

endmodule
