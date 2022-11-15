// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire int1, int2;

xor     x1(a, b, int1);
and     x2(sum1, int2);
or          x3(sum, int1, int2);

endmodule
