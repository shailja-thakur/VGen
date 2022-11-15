// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b : 1;
output cout : 1;
output sum : 1;
output cin : 1;
reg ABCD, ABCD0, ABCD1, BC, BC0, BC1, Cin, sum : 1;

begin

ABCD0 <= a;
BC <= b;
Cin <= bit_or( ABCD0, BC );
BC0 <= ABCD;
BC1 <= bit_and( ABCD0, BC );
sum <= BC0 + BC1;
Cin <= bit_or( BC, Cin );
ABCD <= bit_or( ABCD0, ABCD1 );

sum <= bit_and( ABCD1, BC1 );
Cout <= bit_and( Cin, sum );

end architecture half_adder;

endmodule
