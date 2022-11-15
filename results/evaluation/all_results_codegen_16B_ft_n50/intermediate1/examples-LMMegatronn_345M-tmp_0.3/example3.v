// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [2:0] c;

xor (c[0], a, b);
xor (c[1], a, b);
xor (c[2], a, b);

and (c[0], a[0], b[0]);
and (c[1], a[1], b[1]);
and (c[2], a[2], b[2]);
and (c[3], a[3], b[3]);
and (c[4], a[4], b[4]);
and (c[5], a[5], b[5]);
and (c[6], a[6], b[6]);
and (c[7], a[7], b[7]);
and (c[8], a[8], b[8]);
and (c[9], a[9], b[9]);
andendmodule
