// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire int0, int1;

xor (sum0, aa, b);
and (int1, sum0[0], int0);
or (cout, sum1[0], int1);

endmodule
