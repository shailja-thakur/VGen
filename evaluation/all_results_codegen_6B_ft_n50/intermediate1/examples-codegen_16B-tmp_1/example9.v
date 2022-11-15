// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
and a1(w1, a, b);
and a2(w2, a, w1);
or r1(sum, w1, b);
or r2(cout, w2, w1);
endmodule
