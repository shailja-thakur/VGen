// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

wire cin;

assign cin = a + b;

assign sum = a + b;

assign cout = cin;

endmodule
