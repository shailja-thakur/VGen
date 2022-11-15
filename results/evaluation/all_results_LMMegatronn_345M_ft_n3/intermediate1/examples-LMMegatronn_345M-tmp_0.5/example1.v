// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [2:0] c;

xor x1(sum[0], a ^ b, c[0]);
xor x2(sum[1], c[0], a ^ b, c[1]);
xor x3(sum[2], c[1], a ^ b, c[2]);

and and1(c[0], a, b);
and and2(c[1], a, b);
and and3(c[2], a, b);
and and4(c[3], a, b);
and and5(c[4], a, b);
and and6(c[5], a, b);
and and7(c[6], a, b);
and and8(c[7], a, b);
and and9(c[8], a, b);
and and10(c[9],endmodule
