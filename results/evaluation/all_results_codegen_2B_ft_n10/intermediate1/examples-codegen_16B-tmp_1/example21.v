// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
and a1(w1, a, b);
and a2(w2, w1, a);
and a3(w3, w2, b);
or o1(sum, w1, w3);
or o2(cout, w2, w3);
endmodule
