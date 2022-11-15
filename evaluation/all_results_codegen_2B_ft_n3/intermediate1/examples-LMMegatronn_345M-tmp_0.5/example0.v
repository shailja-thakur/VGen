// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [2:0] g, p;

xor x1(p[0], a[0], b[0], g[0]);
xor x2(p[1], a[1], b[1], g[1]);
xor x3(p[2], a[2], b[2], g[2]);
xor x4(p[3], a[3], b[3], g[3]);
and a1(g[0], a[0], b[0], p[0], cin);
and a2(g[1], a[1], b[1], p[1], cin);
and a3(g[2], a[2], b[2], p[2], cin);
and a4(g[3], a[3], b[3], p[3], cin);
and aendmodule
