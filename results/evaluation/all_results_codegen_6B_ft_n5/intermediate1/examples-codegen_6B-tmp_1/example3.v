// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
 - a f!(b,c1,c2,s);
// s =!a f!(f,j,k,,s);
assign sum = a ^ b;
assign cout = a & b;
endmodule
