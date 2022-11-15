// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire w1, w2, w3, w4;
xor x1(w1, a, b);
and a1(w2, a, b);
xor x2(sum, w1, w2);
and a2(w3, a, w2);
or o1(w4, w3,w1);
or o2(cout, w4, w2);
endmodule
