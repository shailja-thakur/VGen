// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire c1, c2;
xor x1(sum, a, b);
and a1(c1, a, b);
and a2(c2, a, c1);
or o1(cout, c2, c1);
endmodule
