// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2;

xor(w1, a, b);
and(w2, a, b);
or(cout, w1, w2);
not(sum, w1);

endmodule
