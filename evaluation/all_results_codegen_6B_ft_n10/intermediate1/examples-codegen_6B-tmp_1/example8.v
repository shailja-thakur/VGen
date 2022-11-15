// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

xor G1(sum, a, b);
and(cser, a, b);

or G2(cout, cser, 1'b1);

endmodule
