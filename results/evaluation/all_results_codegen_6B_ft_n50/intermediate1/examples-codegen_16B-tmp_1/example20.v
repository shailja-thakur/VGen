// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

xor( sum, a, b );
and( // Check Code and comment out if neccessary.
d, a, b ); // Check Code and comment out if neccessary.
assign cout = d;

endmodule
