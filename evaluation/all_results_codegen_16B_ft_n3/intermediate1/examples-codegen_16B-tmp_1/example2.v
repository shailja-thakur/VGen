// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
xnor Xnor_gate (w, a, b);
and (w_1, a, b);
or (w_2, a, b);
not (x, w);
and (x_1, w, x);
or (y, w_1, x_1);
and (z, x, w_2);
or (cout, z, y);
endmodule
