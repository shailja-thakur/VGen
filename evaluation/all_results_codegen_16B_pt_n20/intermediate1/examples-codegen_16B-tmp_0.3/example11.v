// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

wire carry_out, sum_out;

half_adder( a, b, cout, sum ) {
	sum = a + b;
	carry_out = (a > b) ? 1 : 0;
	sum_out = sum;
}

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum );

input a, b, c;
output cout, sum;

wire carry_out, sum_out;

full_adder( a, b, c, cout, sum ) {
	sum = a + b + c;
	carry_out = (a > b) ? 1 : 0;
	sum_out = sum;
}
endmodule
