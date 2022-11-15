// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

not( temp1, a );
and( temp2, a, b );
and(temp3, b, temp1);
or( sum, temp2, temp3 );
and( temp4, temp1, a );
or(cout, temp4, temp2);

endmodule
