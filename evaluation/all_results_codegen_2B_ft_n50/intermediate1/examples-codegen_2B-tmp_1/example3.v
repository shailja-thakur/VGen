// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire mid;
xor(sum, a, b);
and(mid, a, b);
or(cout, mid, a);
endmodule
