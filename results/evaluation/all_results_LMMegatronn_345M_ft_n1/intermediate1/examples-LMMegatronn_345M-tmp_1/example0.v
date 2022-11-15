// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire int1, int2;

xor xor1(sum, a, b);
and a1(cout, int1, b);
and a2(int2, int1, sum);
or o1(result, int2);

endmodule
