// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

assign a_in = a;
assign b_in = b;

wire sum_out_in;
assign sum_out_in = sum_out;

wire carry_out_in;
assign carry_out_in = carry_out;

half_adder( a_in, b_in, cout, sum_out_in, carry_out_in );

endmodule
