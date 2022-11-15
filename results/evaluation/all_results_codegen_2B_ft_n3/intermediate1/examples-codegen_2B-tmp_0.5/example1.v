// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1,w2;
xor x1(w1,a,b);
xor x2(sum,w1,w2);
and a1(w2,a,b);
and a2(cout,w1,w2);

endmodule
