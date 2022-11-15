// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2;

not n1(w1, a);
not n2(w2, b);

and a1(cout, a, b);
and a2(sum, w1, w2);
or o1(sum, cout, sum);

endmodule
