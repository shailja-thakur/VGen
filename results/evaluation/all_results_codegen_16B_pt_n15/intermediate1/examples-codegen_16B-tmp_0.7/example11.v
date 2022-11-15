// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in;
wire b_in;
wire sum_out;
wire cin;

wire carry_out;
wire carry_in;

assign a_in = a;
assign b_in = b;

assign cout = cin;
assign sum_out = (a_in + b_in) + carry_in;

assign carry_in = carry_out;
assign carry_out = (a_in + b_in) > 15;

assign cin = sum_out;

endmodule
