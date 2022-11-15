// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_s, b_s, sum_s, cout_s;

assign a_s = a;
assign b_s = b;
assign sum_s = {a, (a, b)};
assign cout_s = sum_s + 1;

endmodule
