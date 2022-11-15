// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_in, carry_out;
wire sum_in;

wire a_in, b_in;

assign a_in = a;
assign b_in = b;

assign cout = carry_out & sum_in;

half_adder half_adder_1( a_in, b_in, cout, sum_in );

endmodule
