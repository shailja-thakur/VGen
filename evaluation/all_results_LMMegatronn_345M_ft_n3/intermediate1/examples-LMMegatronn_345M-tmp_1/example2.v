// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire xsum, ysum;

full_adder fadder1(a, b, xsum, cout);

and a1(xsum, xsum, xsum);
and a2(ysum, ysum, xsum);

or o1(Cout, A, ysum);

endmodule
