// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
not(a0, a); // a0 is the complement of a
not(b0, b); // b0 is the complement of b
and(halfand,a,b); //halfand is a AND b
and(a1,a0,b); // a1 is a AND b0
and(b1,a,b0); // b1 is a AND b0
or(fullor,a1,b1); //fullor is a OR b1
and(cout,halfand,fullor); //cout is a AND (halfand OR fullor)
xor(sum,a,b); //sum is a XOR a0b
endmodule
