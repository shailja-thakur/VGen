// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

not(nota, a);	
not(notb, b);
and(a_and_b, a, b);	
and(nota_and_notb, nota, notb);
or(cout, a_and_b, nota_and_notb);
and(sum, nota, notb);	

endmodule
