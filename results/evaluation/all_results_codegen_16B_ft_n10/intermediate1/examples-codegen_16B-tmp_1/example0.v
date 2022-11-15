// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
and sum_comp (cout, a, b);
or (sum, cout, A);
endmodule
