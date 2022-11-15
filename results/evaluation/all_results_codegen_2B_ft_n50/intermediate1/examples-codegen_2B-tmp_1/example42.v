// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
 
// a(x,y) + b(x,y)
xor(sum, a, b);
//A xor B carries in the same bit.
and(cout, a, b);

endmodule
