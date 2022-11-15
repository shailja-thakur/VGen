// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

and a1(w1, a, b);
and a2(w2, b, a);
or o1(sum, w1, w2);
and a3(cout, a, b);
or o2(cout, w1, w2);
endmodule
